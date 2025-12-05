FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://radxa-zero-3w-wifi.dtsi"

do_configure:append() {
    # Append the Wi-Fi configuration to the main device tree
    cat ${WORKDIR}/radxa-zero-3w-wifi.dtsi >> ${S}/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
}
