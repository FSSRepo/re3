wget https://github.com/glfw/glfw/releases/download/3.3.2/glfw-3.3.2.bin.WIN64.zip
tar -xf glfw-3.3.2.bin.WIN64.zip
premake5 vs2019 --with-librw --no-full-paths --glfwdir64=glfw-3.3.2.bin.WIN64
msbuild -m build/re3.sln /property:Configuration=Release /property:Platform=win-amd64-librw_gl3_glfw-oal /p:PlatformToolset=v143
explorer bin\win-amd64-librw_gl3_glfw-oal\Release