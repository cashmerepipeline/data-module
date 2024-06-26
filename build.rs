use dependencies_sync::tonic_build;

fn main() {
    tonic_build::configure()
        .out_dir("src/protocols")
        .build_client(false)
        .build_server(false)
        .extern_path(".cashmere", "::manage_define::cashmere")
        .type_attribute("SpecsAttribute", "#[derive(serde::Serialize, serde::Deserialize)]")
        .type_attribute(
            "DataServerConfigs",
            "#[derive(serde::Serialize, serde::Deserialize)]",
        )
        .type_attribute(
            "StageInfo",
            "#[derive(serde::Serialize, serde::Deserialize)]",
        )
        .type_attribute("Version", "#[derive(serde::Serialize, serde::Deserialize)]")
        .type_attribute("DataPath", "#[derive(serde::Serialize, serde::Deserialize)]")
        .type_attribute(
            "DataType",
            "#[derive(serde::Serialize, serde::Deserialize)]",
        )
        .type_attribute(
            "FileInfo",
            "#[derive(serde::Serialize, serde::Deserialize)]",
        )
        .type_attribute(
            "Position",
            "#[derive(serde::Serialize, serde::Deserialize)]",
        )
        .compile(
            &["protocols/data_module.proto"],
            &["protocols", "../cashmere_core/protocols"],
        )
        .unwrap();

    define_utils::generate_manage_defines(
        &["manage_defines"],
        "src/ids_codes",
        // None,
        Some("dart_packages/data_module/lib"),
        Some("data_module")
    );
}
