#OpenFace

for dir in /content/drive/MyDrive/05_workspace/01_msc_project/data/output/05_cutting_out_videos/ekman/video11/*
do
    #Get the emotion category name
    dirname=`basename $dir`

    for file in /content/drive/MyDrive/05_workspace/01_msc_project/data/output/05_cutting_out_videos/ekman/video11/$dirname/*.mp4
    do
        echo $file
        echo /content/drive/MyDrive/05_workspace/01_msc_project/data/output/06_openface/ekman/video11/$dirname
        ./OpenFace/build/bin/FaceLandmarkVidMulti -f $file -out_dir /content/drive/MyDrive/05_workspace/01_msc_project/data/output/06_openface/ekman/video11/$dirname
        
        # convert the result into MP4
        filename=`basename $file .mp4`
        
        #echo $filename
        echo /content/drive/MyDrive/05_workspace/01_msc_project/data/output/06_openface/ekman/video11/$dirname/$filename.avi
        echo /content/drive/MyDrive/05_workspace/01_msc_project/data/output/06_openface/ekman/video11/$dirname/$filename.mp4
        ffmpeg -y -loglevel info -i /content/drive/MyDrive/05_workspace/01_msc_project/data/output/06_openface/ekman/video11/$dirname/$filename.avi /content/drive/MyDrive/05_workspace/01_msc_project/data/output/06_openface/ekman/video11/$dirname/$filename.mp4
    done
done