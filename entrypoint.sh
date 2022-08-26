
#!/bin/bash

if [ -z "$FORMAT" ]; then
  echo "FORMAT is required to run MobSF scan action. (FORMAT = $FORMAT)"
  exit 126
fi

if [ -z "$OUTPUT_FILE_NAME" ]; then
  echo "OUTPUT_FILE_NAME is required to run MobSF scan action. (OUTPUT_FILE_NAME = $OUTPUT_FILE_NAME)"
  exit 126
fi

echo ${GITHUB_WORKSPACE} 
which mobsfscan
echo ${GITHUB_WORKSPACE}/${OUTPUT_FILE_NAME}
ls -la ${GITHUB_WORKSPACE}
mobsfscan ${GITHUB_WORKSPACE} --${FORMAT} --output ${GITHUB_WORKSPACE}/${OUTPUT_FILE_NAME}
ls -la ${GITHUB_WORKSPACE}/${OUTPUT_FILE_NAME}