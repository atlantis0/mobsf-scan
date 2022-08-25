
#!/bin/bash

# if [ -z "$SRC_DIR" ]; then
#   echo "SRC_DIR is required to run MobSF scan action. (SRC_DIR = $SRC_DIR)"
#   exit 126
# fi

if [ -z "$OUTPUT_FILE_NAME" ]; then
  echo "OUTPUT_FILE_NAME is required to run MobSF scan action. (OUTPUT_FILE_NAME = $OUTPUT_FILE_NAME)"
  exit 126
fi

echo ${GITHUB_WORKSPACE} 
which mobsfscan
echo ${GITHUB_WORKSPACE}/${OUTPUT_FILE_NAME}
mobsfscan ${GITHUB_WORKSPACE} --json --output ${GITHUB_WORKSPACE}/${OUTPUT_FILE_NAME}
ls -la ${GITHUB_WORKSPACE}/${OUTPUT_FILE_NAME}
# mobsfscan /github/workspace --json --output ${OUTPUT_FILE_NAME}
# cat ${OUTPUT_FILE_NAME}

# docker run -v /home/pwned_report/mobsf:/src -e SRC_DIR='/src' -e OUTPUT_FILE_NAME='/result.json' mobsfscan