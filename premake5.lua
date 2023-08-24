project "glm"
    language  "C++"
    cppdialect  "C++20"
    systemversion "latest"
    kind "StaticLib"

    targetdir  ("%{wks.location}/bin/" .. outputdir.. "-%{prj.name}")
    objdir  ("%{wks.location}/bin-int/" .. outputdir .. "-%{prj.name}")

    files
    {
        "include/glm/**.cpp",
        "include/**.hpp"
    }
    
    includedirs
    {
        "include",
    }

    libdirs
    {
    }

    links
    {
    }
    
    filter "configurations:Logging"
        defines { "_DEBUG", "ACTIVATE_LOGGING" }
        runtime "Debug"

    filter "configurations:Debug"
        defines { "_DEBUG" }
        runtime "Debug"

    filter "configurations:Release"
        defines { "NDEBUG" }
        runtime "Release"
