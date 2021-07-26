#!/usr/bin/env bash
cd ../../../
echo "Olives Trees Cloning Script"
echo ""
echo "Clone device tree..."
git clone https://github.com/olives-device/android_device_xiaomi_msm8937-common device/xiaomi/msm8937-common
git clone https://github.com/olives-device/android_device_xiaomi_sdm439-common device/xiaomi/sdm439-common
echo "Clone kernel tree..."
git clone https://github.com/olives-device/android_kernel_xiaomi_sdm439 kernel/xiaomi/sdm439
echo "Clone vendor trees..."
git clone https://github.com/olives-device/proprietary_vendor_xiaomi_msm8937-common vendor/xiaomi/msm8937-common
git clone https://github.com/olives-device/proprietary_vendor_xiaomi_sdm439-common vendor/xiaomi/sdm439-common
git clone https://github.com/olives-device/proprietary_vendor_xiaomi_olives vendor/xiaomi/olives
git clone https://github.com/olives-device/proprietary_vendor_xiaomi_olives-camera vendor/xiaomi/olives-camera
echo ""
echo "File cloning completed!"
# Clone end

# Camera patch
cp device/xiaomi/sdm439-common/patch/hardware/qcom-caf/msm8996/display/0001-gralloc-Allow-configuring-prod-camera-pixel-format-f.patch hardware/qcom-caf/msm8996/display/
cd hardware/qcom-caf/msm8996/display/
git am 0001-gralloc-Allow-configuring-prod-camera-pixel-format-f.patch
cd ../../../
echo "Done!"
