if(SB_CONFIG_MCUBOOT_MODE_FIRMWARE_UPDATER)
  ExternalZephyrProject_Add(
    APPLICATION firmware_loader
    SOURCE_DIR "../../../subsys/mgmt/mcumgr/smp_svr"
  )
  set_target_properties(firmware_loader PROPERTIES
    IMAGE_CONF_SCRIPT ${ZEPHYR_NRF_MODULE_DIR}/sysbuild/image_configurations/firmware_loader_image_default.cmake
  )
endif()
