project "imgui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"*.cpp",
		"*.h",
        "backends/imgui_impl_opengl3.*",
        "backends/imgui_impl_glfw.*"
	}

    includedirs{
		"./",
        "./../glfw/include",
        "./../glad/include"
	}

	filter "system:windows"
		systemversion "latest"
		staticruntime "On"

	filter { "system:windows", "configurations:Release"}
		buildoptions "MT"
