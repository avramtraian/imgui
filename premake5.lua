project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("Engine/Binaries/Win64")
	objdir ("Engine/Intermediate/Win64")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_tables.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_impl_dx11.h",
		"imgui_impl_dx11.cpp",
		"imgui_impl_win32.h",
		"imgui_impl_win32.cpp"

	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug_Game"
		runtime "Debug"
		symbols "on"

	filter "configurations:Debug_Editor"
		runtime "Debug"
		symbols "on"


	filter "configurations:Development_Game"
		runtime "Release"
		optimize "on"

	filter "configurations:Development_Editor"
		runtime "Release"
		optimize "on"
