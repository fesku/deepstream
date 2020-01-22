################################################################################
# Copyright (c) 2019, NVIDIA CORPORATION. All rights reserved.
#
# NVIDIA Corporation and its licensors retain all intellectual property
# and proprietary rights in and to this software, related documentation
# and any modifications thereto.  Any use, reproduction, disclosure or
# distribution of this software and related documentation without an express
# license agreement from NVIDIA Corporation is strictly prohibited.
#
################################################################################

#!/bin/bash

TARGET_DEVICE=$(uname -m)

if [ -n $TARGET_DEVICE ]; then
  if [ "${TARGET_DEVICE}" = "x86_64" ]; then
    update-alternatives --install /usr/lib/x86_64-linux-gnu/gstreamer-1.0/deepstream deepstream-plugins /opt/nvidia/deepstream/deepstream-4.0/lib/gst-plugins 40
    update-alternatives --install /usr/lib/x86_64-linux-gnu/libv4l/plugins/libcuvidv4l2_plugin.so deepstream-v4l2plugin /opt/nvidia/deepstream/deepstream-4.0/lib/libv4l/plugins/libcuvidv4l2_plugin.so 40
    update-alternatives --install /usr/lib/x86_64-linux-gnu/libv4l2.so.0.0.99999 deepstream-v4l2library /opt/nvidia/deepstream/deepstream-4.0/lib/libnvv4l2.so 40
    update-alternatives --install /usr/lib/x86_64-linux-gnu/libv4lconvert.so.0.0.99999 deepstream-v4lconvert /opt/nvidia/deepstream/deepstream-4.0/lib/libnvv4lconvert.so 40
    update-alternatives --install /usr/bin/deepstream-app deepstream-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-app 40
    update-alternatives --install /usr/bin/deepstream-test1-app deepstream-test1-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test1-app 40
    update-alternatives --install /usr/bin/deepstream-test2-app deepstream-test2-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test2-app 40
    update-alternatives --install /usr/bin/deepstream-test3-app deepstream-test3-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test3-app 40
    update-alternatives --install /usr/bin/deepstream-test4-app deepstream-test4-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test4-app 40
    update-alternatives --install /usr/bin/deepstream-test5-app deepstream-test5-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test5-app 40
    update-alternatives --install /usr/bin/deepstream-user-metadata-app deepstream-user-metadata-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-user-metadata-app 40
    update-alternatives --install /usr/bin/deepstream-dewarper-app deepstream-dewarper-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-dewarper-app 40
    update-alternatives --install /usr/bin/deepstream-nvof-app deepstream-nvof-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-nvof-app 40
    update-alternatives --install /usr/bin/deepstream-image-decode-app deepstream-image-decode-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-image-decode-app 40
    update-alternatives --install /usr/bin/deepstream-gst-metadata-app deepstream-gst-metadata-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-gst-metadata-app 40
    update-alternatives --install /usr/bin/deepstream-perf-demo deepstream-perf-demo /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-perf-demo 40
    update-alternatives --install /usr/bin/deepstream-segmentation-app deepstream-segmentation-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-segmentation-app 40
    update-alternatives --install /usr/bin/deepstream-infer-tensor-meta-app deepstream-infer-tensor-meta-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-infer-tensor-meta-app 40
    echo "/opt/nvidia/deepstream/deepstream-4.0/lib" > /etc/ld.so.conf.d/deepstream.conf
    ldconfig
  elif [ "${TARGET_DEVICE}" = "aarch64" ]; then
    update-alternatives --install /usr/lib/aarch64-linux-gnu/gstreamer-1.0/deepstream deepstream-plugins /opt/nvidia/deepstream/deepstream-4.0/lib/gst-plugins 40
    update-alternatives --install /usr/bin/deepstream-app deepstream-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-app 40
    update-alternatives --install /usr/bin/deepstream-test1-app deepstream-test1-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test1-app 40
    update-alternatives --install /usr/bin/deepstream-test2-app deepstream-test2-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test2-app 40
    update-alternatives --install /usr/bin/deepstream-test3-app deepstream-test3-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test3-app 40
    update-alternatives --install /usr/bin/deepstream-test4-app deepstream-test4-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test4-app 40
    update-alternatives --install /usr/bin/deepstream-test5-app deepstream-test5-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-test5-app 40
    update-alternatives --install /usr/bin/deepstream-user-metadata-app deepstream-user-metadata-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-user-metadata-app 40
    update-alternatives --install /usr/bin/deepstream-dewarper-app deepstream-dewarper-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-dewarper-app 40
    update-alternatives --install /usr/bin/deepstream-nvof-app deepstream-nvof-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-nvof-app 40
    update-alternatives --install /usr/bin/deepstream-image-decode-app deepstream-image-decode-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-image-decode-app 40
    update-alternatives --install /usr/bin/deepstream-gst-metadata-app deepstream-gst-metadata-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-gst-metadata-app 40
    update-alternatives --install /usr/bin/deepstream-perf-demo deepstream-perf-demo /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-perf-demo 40
    update-alternatives --install /usr/bin/deepstream-segmentation-app deepstream-segmentation-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-segmentation-app 40
    update-alternatives --install /usr/bin/deepstream-infer-tensor-meta-app deepstream-infer-tensor-meta-app /opt/nvidia/deepstream/deepstream-4.0/bin/deepstream-infer-tensor-meta-app 40
    echo "/opt/nvidia/deepstream/deepstream-4.0/lib" > /etc/ld.so.conf.d/deepstream.conf
    ln -sf /usr/lib/aarch64-linux-gnu/tegra/libnvbufsurface.so /opt/nvidia/deepstream/deepstream-4.0/lib/libnvbufsurface.so
    ln -sf /usr/lib/aarch64-linux-gnu/tegra/libnvbufsurftransform.so /opt/nvidia/deepstream/deepstream-4.0/lib/libnvbufsurftransform.so
    ldconfig
  fi
fi
