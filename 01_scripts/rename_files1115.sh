#!/bin/bash
#
#本脚本功能：重命名当前路径下的文件，在文件名后加“_1”。
#
# 获取当前目录下的所有文件
files=(*)

# 初始化计数器
counter=1

# 遍历文件并重命名
for file in "${files[@]}"; do
    # 检查是否为文件（忽略文件夹）
    if [ -f "$file" ]; then
        # 获取文件扩展名
        extension="${file##*.}"
	oldname="${file##*/}"
        # 设置新文件名
        new_name="${odlname}_${counter}.${extension}"
        # 重命名文件
        mv "$file" "$new_name"
        echo "Renamed: $file -> $new_name"
        # 计数器加1
       # ((counter++))
    fi
done

echo "All files have been renamed."
