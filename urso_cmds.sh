#! /usr/bin/bash

case $1 in
    1)
        echo "Running ursonet on test dataset images"
        python3 -W ignore  pose_estimator.py test --dataset soyuz_easy --weights soyuz_hard --image_scale 0.5 --ori_resolution 24 --bottleneck 128 --square_image
        ;;
    2)
        echo "Running ursonet on custom video"
        python3 -W ignore  pose_estimator.py test --video ./inputs/tag1.mp4 --dataset soyuz_easy --weights soyuz_hard --image_scale 0.5 --ori_resolution 24 --bottleneck 128 --square_image
        ;;
    3)
        echo "Running ursonet on custom images"
        python3 -W ignore pose_estimator.py test --image ./inputs/Soyuz.png --dataset soyuz_easy --weights soyuz_hard --image_scale 0.5 --ori_resolution 24 --bottleneck 128 --square_image
        ;;
    *)
        echo "Usage: $0 {1|2|3}"
        echo "  1: test dataset images"
        echo "  2: custom video"
        echo "  3: custom images"
        exit 1
        ;;
esac