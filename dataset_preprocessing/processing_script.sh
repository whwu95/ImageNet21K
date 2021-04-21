export ROOT=/mnt/imagenet21k_new/imagenet21k_train # target folder, adjust this path

# untarring the original tar to 21k tar's:
tar -xvf fall11_whole.tar -C $ROOT

find . -type f -print | wc -l # 21841

# extracting all tar's in parallel (!)
cd $ROOT
find . -name "*.tar" | parallel 'echo {};  ext={/}; target_folder=${ext%.*}; mkdir -p $target_folder;  tar  -xf {} -C $target_folder'

find ./ -mindepth 1 -type d | wc -l # 21841

# delete all tar's
cd $ROOT
rm *.tar

# Remove uncommon classes for transfer learning
BAK=/mnt/imagenet21k_new/imagenet21k_small_classes
mkdir -p ${BAK}
for c in ${ROOT}/n*; do
    count=`ls $c/*.JPEG | wc -l`
    if [ "$count" -gt "500" ]; then
        echo "keep $c, count = $count"
    else
        echo "remove $c, $count"
        mv $c ${BAK}/
    fi
done

find ./ -mindepth 1 -type d | wc -l  # 11221

# create validation set, 50 images in each folder
VAL_ROOT=/mnt/imagenet21k_new/imagenet21k_val
mkdir -p ${VAL_ROOT}
export ROOT=/mnt/imagenet21k_new/imagenet21k_train
for i in ${ROOT}/n*; do
    c=`basename $i`
    echo $c
    mkdir -p ${VAL_ROOT}/$c
    for j in `ls $i/*.JPEG | shuf | head -n 50`; do
        mv $j ${VAL_ROOT}/$c/
    done
done


# resizing
python resize.py