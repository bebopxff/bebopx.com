# sh ./modify_theme.sh themes/.../layout/index.html

FILE_NAME=$(basename $1)
DIR_NAME=$(dirname $1)
SUB_DIR_NAME=${DIR_NAME##themes*layouts\/}

echo $SUB_DIR_NAME

TARGET_DIR=layouts

if [[ $SUB_DIR_NAME == "" ]]
then
  TARGET_FILE_NAME=./layouts/$FILE_NAME
else
  mkdir -p ./layouts/$SUB_DIR_NAME
  TARGET_FILE_NAME=./layouts/$SUB_DIR_NAME/$FILE_NAME
fi

echo "THEME_FILE_NAME"
echo $1
echo "TARGET_FILE_NAME"
echo $TARGET_FILE_NAME

cp $1 $TARGET_FILE_NAME