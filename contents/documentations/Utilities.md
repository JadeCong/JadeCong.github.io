---
layout: page
title: Utilities
description: >
  Docs for utilities.
# logo:
# theme_color:
# accent_color:
accent_image:
  background: url('/assets/images/documentations/sidebar-documentations.jpg') center/cover
  overlay: true
# image:
#   path:
#   srcset:
#     1024w:
#     512w:
#     256w:

# permalink: /contents/documentations/
# show_collection: documentations
# selected_projects:
# projects_page:
# selected_posts:
# posts_page:
# related_posts:
# redirect_from:
# excerpt_separator:
last_modified_at: 2024-08-04

hide_description: true
hide_image: false
hide_last_modified: false
invert_sidebar: false
cover: false
no_groups: true
no_link_title: false
no_excerpt: false
no_third_column: true
sitemap: true
comments: true
featured: false
---

- Table of Contents
{:toc}

The block is created for some utilities which are used in routine works. The docs are mainly targeted for basic principles and applications in the fields of **Shell**, **Git**, **CMake** and **Anaconda** etc.

**JadeCong(GitHub Gist):** [Utilities](https://gist.github.com/JadeCong/4289d9171ab907fb3064266083298752)
{:.note}

## Shell

### 1. Shell Regular Command

Reference:
> (1) <https://www.gnu.org/software/bash/manual/bash.html><br>
> (2) <https://www.learnshell.org/><br>
> (3) <https://linuxcommand.org/lc3_writing_shell_scripts.php><br>
> (4) <https://www.shellscript.sh/><br>
> (5) <https://www.tutorialspoint.com/unix/shell_scripting.htm><br>
> (6) <https://www.runoob.com/linux/linux-shell.html><br>

### 2. Shell Command Template


    #!/bin/bash

    # shell running method(Reference: https://blog.csdn.net/violet_echo_0908/article/details/52056071 && https://www.cnblogs.com/cangqinglang/p/11085013.html)
    source filename  # 这个命令其实只是简单地读取脚本里面的语句依次在当前shell里面执行，没有建立新的子shell。那么脚本里面所有新建、改变变量的语句都会保存在当前shell里面。
    bash/sh/shell filename  # 该命令重新建立一个子shell，在子shell中执行脚本里面的语句，该子shell继承父shell的环境变量，但子shell新建的、改变的变量不会被带回父shell。一般会在脚本文件开头加上#!/bin/bash。
    ./filename  # 当shell脚本具有可执行权限时，用sh filename与./filename执行脚本是没有区别得。./filename是因为当前目录没有在PATH中，所有”.”是用来表示当前目录的。
    exec command arg1 arg2 arg3 $@  # shell的内建命令exec将并不启动新的shell，而是用要被执行命令替换当前的shell进程，并且将老进程的环境清理掉，而且exec命令后的其它命令将不再执行。其中$@返回传入的命令参数(Reference: https://www.cnblogs.com/bulh/articles/12760617.html && https://blog.csdn.net/weixin_43025343/article/details/130951691)

    # shell passing parameters(Reference: https://www.runoob.com/linux/linux-shell-passing-arguments.html)
    command arg1 arg2 arg3 $@  # 其中$@返回每个传入命令的参数

    # set the shell running mode(Reference: https://www.runoob.com/linux/linux-comm-set.html && https://www.ruanyifeng.com/blog/2017/11/bash-set.html)
    set -e  # 若指令传回值不等于0，则立即退出shell
    set -x  # 执行指令后，会先显示该指令及所下的参数
    set -u  # 当执行时使用到未定义过的变量，则显示错误信息
    set -o pipefail  # 解决管道命令失败的问题
    set -euxo pipefail
    set -eux && set -o pipefail

    # configure the env(Reference: https://www.runoob.com/linux/linux-comm-export.html && https://cloud.tencent.com/developer/article/1365982 && https://www.cnblogs.com/tinywan/p/7224011.html)
    export -p  # 列出所有的Shell环境变量
    export -n  # 删除指定的变量。变量实际上并未删除，只是不会输出到后续指令的执行环境中。
    export -f  # 代表[变量名称]中为函数名称。
    export [-fnp] [变量名称]=[变量设置值]

    # get current path(Reference: https://blog.csdn.net/LGD_2008/article/details/45913957)
    SCRIPT_DIR=$(readlink -f .)
    SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE}); pwd)
    SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd)

    # basic operator(Reference: https://www.runoob.com/linux/linux-shell-basic-operators.html && https://www.cnblogs.com/aaronlinux/p/8340281.html)
    command1 | command2  # |为管道符号，它的功能是把第一个命令command1执行的结果作为command2的输入传给command2
    command1 && command2  # &&为与运算符号，左边的command1返回真(即返回0，成功被执行）后，&&右边的command2才能够被执行
    command1 || command2  # ||为或运算符合，左边的command1未执行成功，那么就执行右边的command2
    (command1;command2;command3...)  # ()表示在当前 shell 中将多个命令作为一个整体执行。需要注意的是，使用()括起来的命令在执行前面都不会切换当前工作目录，也就是说命令组合都是在当前工作目录下被执行的，尽管命令中有切换目录的命令。
    { command1;command2;command3...}  # 在使用{}时，{}与命令之间必须使用一个空格。如果使用{}来代替()，那么相应的命令将在子shell而不是当前shell中作为一个整体被执行，只有在{}中所有命令的输出作为一个整体被重定向时，其中的命令才被放到子shell中执行，否则在当前shell执行。

    # create temp file or directory
    mktemp -u -t -d tmp.XXXXXX  # 在系统/tmp目录而不是当前目录下创建一个临时文件（-t），此时仅返回一个文件名并未创建临时文件（-u），创建的是一个临时目录而不是文件（-d）。

    # exit and get the info
    exit $?  # 显示最后命令的退出状态。0表示没有错误，其他任何值表明有错误(Reference: https://www.runoob.com/linux/linux-shell-passing-arguments.html)


## Git

### 1. Regular Usage(init, add, commit, status, log, push, pull, merge, remote, github, etc.)

1. 首先在某个文件夹下建立github远程存储服务器，并初始化github服务
> cd github_path
>
> mkdir & cd $your_project_dir  //建立工程文件夹
>
> git init --bare  //建立裸仓库
>
> sudo chown -R srv01:srv01 .  //将所有拥有者改为所有人或者取消

2. 将本地工程提交到git版本控制服务器，然后将工程的源推送到github存储服务器的主分支
> cd $your_project_path
>
> git init  //在工程路径下新建并初始化一个仓库
>
> git add {your_file/your_dir}  //添加跟踪文件或者文件夹
>
> git commit -m "{对本次跟踪暂存的描述和备注}"  //针对本次添加文件进行提交
>
> git commit -a -m "{提交描述}"  //针对之前添加跟踪的所有文件暂存起来一并提交
>
> git remote add origin user_name@github_server_ip:/github_path/$your_project_dir  //将git版本控制服务器上的源origin添加到github存储服务器进行追踪
>
> git push origin master  //将git版本控制服务器上的源origin推送到github存储服务器

3. 当前仓库中状态查看
> git status

4. 当前仓库中提交记录(多种功能 -p -2/--stat/--pretty/--since/--until/--author/--committer/--grep)
> git log

5. 从当前仓库和工作目录中移除某文件
> git rm $file  //从暂存区域（跟踪文件）中移除该文件，并从工作目录中删除该文件；如果删除之前修改过并且已经放到暂存区域的话，则必须要用强制删除选项 -f

6. 从当前仓库中移除文件，但工作目录保留
> git rm --cached $file

7. 删除 log/目录下扩展名为 .log的所有文件(关于glob模式使用)
> git rm log/\*.log

8. 移动文件
> git mv file_from file_to

9. 撤销操作
> git commit --amend  //覆盖上一次提交文件内容

10. 取消暂存文件
> git reset HEAD -- [file]/[dir]

11. 撤消对文件的修改
> git checkout -- [file]  //你对那个文件做的任何修改都会消失 - 你只是拷贝了另一个文件来覆盖它

12. 添加远程仓库
> git remote add <shortname> <url>  //现在你可以在命令行中使用字符串<shortname>来代替整个<url>

13. 列出所有远程仓库
> git remote -v

14. 从远程仓库中抓取
> git fetch [remote-name]  //这个命令会访问远程仓库，从中拉取所有你还没有的数据。 执行完成后，你将会拥有那个远程仓库中所有分支的引用，可以随时合并或查看；git fetch origin会抓取克隆（或上一次抓取）后新推送的所有工作

15. 运行 git pull通常会从最初克隆的服务器上抓取数据并自动尝试合并到当前所在的分支
> git pull

16. 推送到远程仓库
> git push [remote-name] [branch-name]

17. 查看远程仓库
> git remote show [remote-name]

18. 远程仓库的移除与重命名
> git remote rename [name_original] [name_new]
> git remote rm [remote-name]

19. git别名 //用于简化/个性化指令
> git子命令：git config --global alias.unstage 'reset HEAD --'  //设置取消暂存别名（两条命令等价）：git unstage fileA ；git reset HEAD -- fileA
>
> 外部命令：git config --global alias.visual '!gitk'  //我们现在演示将 git visual定义为 gitk的别名（前面加上！）

20. git仓库与工作目录分离（将版本控制和源代码工作目录分离）
> git init  //用于创建本地工作目录仓库
>
> git init --bare  //用于创建远程版本控制目录

21. git子模块（指定分支）操作
> 添加子模块：git submodule add -b master [url] [path]，然后进入项目目录通过git add . && git commit -m "add submodule"命令进行提交推送。
>
> 克隆项目后，默认子模块目录下无任何内容，需要下载子模块：git submodule update --init --recursive 或者 git submodule init && git submodule update
>
> 子模块的维护者提交了更新后，使用子模块的项目必须手动更新才能包含最新的提交，进入到子模块目录下，执行：git pull，完成后返回到项目目录，可以看到子模块有待提交的更新，使用git add提交即可。或者执行命令：git submodule update --init --remote
>
> 删除子模块：
>> (1) rm -rf submodule 删除子模块目录及源码<br>
>> (2) gedit .gitmodules 删除项目目录下.gitmodules文件中子模块相关条目<br>
>> (3) gedit .git/config 删除配置项中子模块相关条目<br>
>> (4) rm .git/modules/submodule 删除模块下的子模块目录，每个子模块对应一个目录，注意只删除对应的子模块目录即可<br>
>> (5) git rm --cached submodule 执行完成后，再执行添加子模块命令即可，如果仍然报错，执行该命令<br>
>> (6) 添加提交并推送变动内容即可<br>
>
> 更换子模块分支：
>> (1) 创建子模块时指定一个分支: git submodule add -b master [URL to Git repo]<br>
>> (2) 在.gitmodules 文件中设置分支: git config -f .gitmodules submodule.DbConnector.branch stable  # 其中 DbConnector 是主目录中安装的子目录的名称， stable 是对应要设置的分支名称<br>
>> (3) 主目录中找到对应的子模块，切换到对应的分支: cd project/submoduleA && git checkout master && cd .. && git submodule foreach git pull && cd ..  # 其中 project 主项目，submoduleA子模块，git checkout切换到我们的对应分支，然后拉取对应分支代码<br>

22. git隐藏文件（.gitignore/.gitignore_global/.gitattributes/.gitkeep/.gitconfig/.gitmodules）
> .gitignore：用于忽略track一些文件
> .gitignore_global：用于忽略全局的一些文件
> .gitattributes：用于定义每个路径的属性
> .gitkeep：用于空文件夹的占位符
> .gitconfig：用于配置系统/用户/仓库级别的git设置
> .gitmodules：用于添加子模块到当前仓库

23. git放弃修改，强制覆盖本地代码
> git fetch --all
> git reset --hard origin/master
> git pull

### 2. References

(1) <https://geekhall.cn/><br>
(2) <https://geek-docs.com/git/git-questions/154_git_what_are_all_available_git_special_files_that_can_be_committed_to_a_repository.html>

## CMake

> Reference: [CMake Reference Documentation](https://cmake.org/cmake/help/latest/)

### 1. CMakeLists.txt

```cmake
###################
## CMake Setting ##
###################

# Minimum required cmake version: 3.1.0
cmake_minimum_required(VERSION 3.1.0...3.24.1 FATAL_ERROR)
if(${CMAKE_VERSION} VERSION_LESS 3.12)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif()


###################
## Configuration ##
###################

# Configure the project
set(PROJECT_NAME mr)
set(${PROJECT_NAME}_VERSION 1.0)
set(${PROJECT_NAME}_DESCRIPTION "Host software for MR")
set(${PROJECT_NAME}_HOMEPAGE_URL "https://github.com/Conarobot/mr/tree/master")
set(${PROJECT_NAME}_LANGUAGES CXX C)
project(${PROJECT_NAME}
    VERSION ${${PROJECT_NAME}_VERSION}
    DESCRIPTION ${${PROJECT_NAME}_DESCRIPTION}
    HOMEPAGE_URL ${${PROJECT_NAME}_HOMEPAGE_URL}
    LANGUAGES ${${PROJECT_NAME}_LANGUAGES}
)

# Configure the project root directory
set(PROJECT_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${PROJECT_ROOT_DIR})

# Include the general configuration for the project
message(STATUS "Include the general configuration for the project...")
include(cmake/general_config.cmake)

# Include the general options for the project
message(STATUS "Include the general options for the project...")
include(cmake/general_options.cmake)


##############
## Building ##
##############

# Include the build configuration for the project
message(STATUS "Include the build configuration for the project...")
include(cmake/build_config.cmake)

# Set the directories
message(STATUS "Set the directories...")
include(cmake/set_dirs.cmake)

# Set the dependencies
message(STATUS "Set the dependencies...")
include(cmake/set_depends.cmake)

# Set the libraries
message(STATUS "Set the libraries...")
include(cmake/set_libs.cmake)

# Set the executables
message(STATUS "Set the executables...")
include(cmake/set_exes.cmake)

# Set the examples

# Set the tests


##################
## Installation ##
##################

# Include the install configuration for the project
message(STATUS "Include the install configuration for the project...")
include(cmake/install_config.cmake)


#############
## Testing ##
#############

# Include the test configuration for the project
message(STATUS "Include the test configuration for the project...")
include(cmake/test_config.cmake)
```

### 2. general_config.cmake

```cmake
###########################
## General Configuration ##
###########################

# Configure the compiler
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
```

### 3. general_options.cmake

```cmake
#####################
## General Options ##
#####################

# Set the general build options
option(ENABLE_CCACHE "Build with ccache." ON)
option(STRICT "Treat warnings as errors" OFF)
option(BUILD_COVERAGE "Build with code coverage" OFF)
option(BUILD_WITH_CPU_EXTENSIONS "Enable compiler optimizations using CPU extensions (such as AVX)" ON)
option(BUILD_SHARED_LIBS "Build shared library" OFF)
option(BUILD_TOOLS "Build tools that are not examples" OFF)
option(BUILD_PYTHON_BINDINGS "Build Python bindings" OFF)
option(BUILD_TESTS "Build tests" OFF)
option(BUILD_EXAMPLES "Build examples" OFF)
option(BUILD_DOCUMENTATION "Build documentation" OFF)

# Set the library build options
option(BUILD_LIB_SERIAL "Build library serial" ON)
option(BUILD_LIB_MR_SERIAL "Build library mr_serial" ON)
option(BUILD_LIB_JSONCPP "Build library jsoncpp" ON)
option(BUILD_LIB_MR_MQTT "Build library mr_mqtt" ON)
option(BUILD_LIB_MR_CONIO "Build library mr_conio" ON)
option(BUILD_LIB_MR_AUDIO "Build library mr_audio" ON)
option(BUILD_LIB_MR_CONFIG "Build library mr_config" ON)
option(BUILD_LIB_MR_GRPC_PROTO "Build library mr_grpc_proto" ON)
option(BUILD_LIB_MR_APP_PROTO "Build library mr_app_proto" ON)
option(BUILD_LIB_MR_3D_SCAN "Build library mr_3d_scan" ON)
option(BUILD_LIB_PYTHON "Build library python" ON)
option(BUILD_LIB_MR_TRAJ_MAPPING "Build library mr_traj_mapping" ON)
option(BUILD_LIB_MR_LOGGING "Build library mr_logging" ON)

# Set the executable build options
## test build options
option(BUILD_EXE_TEST_MR_SERIAL "Build executable test_mr_serial" ON)
option(BUILD_EXE_TEST_MR_MQTT "Build executable test_mr_mqtt" ON)
option(BUILD_EXE_TEST_MR_AUDIO_PLAY1 "Build executable test_mr_audio_play1" ON)
option(BUILD_EXE_TEST_MR_AUDIO_PLAY2 "Build executable test_mr_audio_play2" ON)
option(BUILD_EXE_TEST_MR_AUDIO_PLAY3 "Build executable test_mr_audio_play3" ON)
option(BUILD_EXE_TEST_MR_CONFIG "Build executable test_mr_config" ON)
option(BUILD_EXE_TEST_MR_GRPC_PROTO "Build executable test_mr_grpc_proto" ON)
option(BUILD_EXE_TEST_MR_APP_PROTO "Build executable test_mr_app_proto" ON)
option(BUILD_EXE_TEST_MR_PYTHON "Build executable test_mr_python" ON)
option(BUILD_EXE_TEST_MR_LOGGING "Build executable test_mr_logging" ON)
option(BUILD_EXE_TEST_MR "Build executable test_mr" ON)
## example build options
option(BUILD_EXE_EXAMPLE_MR "Build executable example_mr" ON)
option(BUILD_EXE_EXAMPLE_MR_META_SKILL "Build executable example_mr_meta_skill" ON)
## release build options
option(BUILD_EXE_RELEASE_MR "Build executable release_mr" ON)
```

### 4. build_config.cmake

```cmake
#########################
## Build Configuration ##
#########################

# Configure the building properties
if(STRICT)
    if(MSVC)
        add_compile_options(/WX)
    else()
        add_compile_options(-Werror)
    endif()
endif()

if(BUILD_COVERAGE)
    add_compile_options(--coverage)
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --coverage")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} --coverage")
endif()

# Configure the building contents
if(BUILD_TOOLS)
    add_subdirectory(tools)
endif()

if(BUILD_PYTHON_BINDINGS)
    add_subdirectory(scripts)
endif()

if(BUILD_TESTS)
    enable_testing()
    add_subdirectory(tests)
endif()

if(BUILD_EXAMPLES)
    add_subdirectory(examples)
endif()

if(BUILD_DOCUMENTATION)
    add_subdirectory(doc)
endif()
```

### 5. set_dirs.cmake

```cmake
#####################
## Set Directories ##
#####################

# Set the directories
include_directories(include)

if(BUILD_LIB_SERIAL)
    include_directories(utils/serial/include)
endif()
if(BUILD_LIB_JSONCPP)
    include_directories(utils/jsoncpp/include)
endif()
if(BUILD_LIB_PYTHON)
    include_directories(/usr/include/python3.8)
endif()
```

### 6. set_depends.cmake

```cmake
######################
## Set Dependencies ##
######################

# Set the library dependency
if(BUILD_LIB_SERIAL)
    if(APPLE)
        find_library(IOKIT_LIBRARY IOKit)
        find_library(FOUNDATION_LIBRARY Foundation)
    elseif(UNIX)
        find_library(RT_LIBRARY rt)
        find_library(PTHREAD_LIBRARY pthread)
    else()
        find_library(SETUPAPI_LIBRARY setupapi)
    endif()
endif()

if(BUILD_LIB_MR_MQTT)
    find_library(MQTT_C_LIBRARY paho-mqtt3as)
    find_library(MQTT_CPP_LIBRARY paho-mqttpp3)
endif()

if(BUILD_LIB_MR_AUDIO)
    find_library(ASOUND_LIBRARY asound)
    find_library(MPG123_LIBRARY mpg123)
    find_library(AO_LIBRARY ao)
endif()

if(BUILD_LIB_MR_GRPC_PROTO)
    ## Find Threads installation
    find_package(Threads REQUIRED)
    ## Find Protobuf installation
    set(protobuf_MODULE_COMPATIBLE TRUE)
    find_package(Protobuf CONFIG REQUIRED)
    set(PROTOBUF_LIBPROTOBUF protobuf::libprotobuf)
    set(REFLECTION gRPC::grpc++_reflection)
    find_program(PROTOBUF_PROTOC protoc)
    ## Find gRPC installation
    find_package(gRPC CONFIG REQUIRED)
    set(GRPC_GRPCPP gRPC::grpc++)
    find_program(GRPC_CPP_PLUGIN_EXECUTABLE grpc_cpp_plugin)
    ## Generate sources
    get_filename_component(mr_mh_proto "./configs/protobuf/mr_massage_head.proto" ABSOLUTE)
    get_filename_component(mr_mh_proto_path "${mr_mh_proto}" PATH)
    message(STATUS "Proto file: ${mr_mh_proto}")
    set(mr_mh_proto_out_path "${mr_mh_proto_path}/../../include/core/protocol")
    set(mr_mh_proto_hdrs "${mr_mh_proto_out_path}/mr_massage_head.pb.h")
    set(mr_mh_proto_srcs "${mr_mh_proto_out_path}/mr_massage_head.pb.cc")
    set(mr_mh_grpc_hdrs "${mr_mh_proto_out_path}/mr_massage_head.grpc.pb.h")
    set(mr_mh_grpc_srcs "${mr_mh_proto_out_path}/mr_massage_head.grpc.pb.cc")
    add_custom_command(
        OUTPUT "${mr_mh_proto_hdrs}" "${mr_mh_proto_srcs}" "${mr_mh_grpc_hdrs}" "${mr_mh_grpc_srcs}"
        COMMAND ${PROTOBUF_PROTOC}
        ARGS --grpc_out "${mr_mh_proto_out_path}"
            --cpp_out "${mr_mh_proto_out_path}"
            -I "${mr_mh_proto_path}"
            --plugin=protoc-gen-grpc="${GRPC_CPP_PLUGIN_EXECUTABLE}"
            "${mr_mh_proto}"
        DEPENDS "${mr_mh_proto}")
    include_directories("${mr_mh_proto_out_path}")
endif()

if(BUILD_LIB_MR_APP_PROTO)
    ## Generate sources
    get_filename_component(mr_app_proto "./configs/protobuf/mr_app.proto" ABSOLUTE)
    get_filename_component(mr_app_proto_path "${mr_app_proto}" PATH)
    message(STATUS "Proto file: ${mr_app_proto}")
    set(mr_app_proto_out_path "${mr_app_proto_path}/../../include/core/protocol")
    set(mr_app_proto_hdrs "${mr_app_proto_out_path}/mr_app.pb.h")
    set(mr_app_proto_srcs "${mr_app_proto_out_path}/mr_app.pb.cc")
    add_custom_command(
        OUTPUT "${mr_app_proto_hdrs}" "${mr_app_proto_srcs}"
        COMMAND ${PROTOBUF_PROTOC}
        ARGS --cpp_out "${mr_app_proto_out_path}"
            -I "${mr_app_proto_path}"
            "${mr_app_proto}"
        DEPENDS "${mr_app_proto}")
    include_directories("${mr_app_proto_out_path}")
endif()

if(BUILD_LIB_MR_LOGGING)
    find_package(Boost 1.71.0 REQUIRED COMPONENTS log_setup log)
endif()


# Set the executable dependency
if(BUILD_LIB_PYTHON)
    set(PYTHON_LIBRARY /usr/lib/x86_64-linux-gnu/libpython3.8.so)
endif()
```

### 7. set_libs.cmake

```cmake
###################
## Set Libraries ##
###################

# Set the libraries
set(LIBS_LIST serial)  # 0
list(APPEND LIBS_LIST mr_serial)  # 1
list(APPEND LIBS_LIST jsoncpp)  # 2
list(APPEND LIBS_LIST mr_mqtt)  # 3
list(APPEND LIBS_LIST mr_conio)  # 4
list(APPEND LIBS_LIST mr_audio)  # 5
list(APPEND LIBS_LIST mr_config)  # 6
list(APPEND LIBS_LIST mr_grpc_proto)  # 7
list(APPEND LIBS_LIST mr_app_proto)  # 8
list(APPEND LIBS_LIST mr_3d_scan)  # 9
list(APPEND LIBS_LIST mr_traj_mapping)  # 10
list(APPEND LIBS_LIST mr_logging)  # 11

## Set the serial library
if(BUILD_LIB_SERIAL)
    list(GET LIBS_LIST 0 LIB0)
    set(${LIB0}_LIBS
        utils/serial/src/serial.cc
        utils/serial/include/serial/serial.h
        utils/serial/include/serial/v8stdint.h
    )
    if(APPLE)
        # If OSX
        list(APPEND ${LIB0}_LIBS utils/serial/src/impl/unix.cc)
        list(APPEND ${LIB0}_LIBS utils/serial/src/impl/list_ports/list_ports_osx.cc)
    elseif(UNIX)
        # If unix
        list(APPEND ${LIB0}_LIBS utils/serial/src/impl/unix.cc)
        list(APPEND ${LIB0}_LIBS utils/serial/src/impl/list_ports/list_ports_linux.cc)
    else()
        # If windows
        list(APPEND ${LIB0}_LIBS utils/serial/src/impl/win.cc)
        list(APPEND ${LIB0}_LIBS utils/serial/src/impl/list_ports/list_ports_win.cc)
    endif()
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB0} SHARED ${${LIB0}_LIBS})
    else()
        add_library(${LIB0} STATIC ${${LIB0}_LIBS})
    endif()
    
    if(APPLE)
        target_link_libraries(${LIB0} ${IOKIT_LIBRARY} ${FOUNDATION_LIBRARY})
    elseif(UNIX)
        target_link_libraries(${LIB0} ${RT_LIBRARY} ${PTHREAD_LIBRARY})
    else()
        target_link_libraries(${LIB0} ${SETUPAPI_LIBRARY})
    endif()
endif()

## Set the mr_serial library
if(BUILD_LIB_MR_SERIAL)
    list(GET LIBS_LIST 1 LIB1)
    set(${LIB1}_LIBS
        include/core/common/serial_port.h
        include/core/common/queue_memcpy.h
        include/core/common/crc8.h
        src/core/common/serial_port.cpp
        src/core/common/queue_memcpy.cpp
        src/core/common/crc8.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB1} SHARED ${${LIB1}_LIBS})
    else()
        add_library(${LIB1} STATIC ${${LIB1}_LIBS})
    endif()
    
    target_link_libraries(${LIB1} ${LIB0})
endif()

## Set the jasoncpp library
if(BUILD_LIB_JSONCPP)
    list(GET LIBS_LIST 2 LIB2)
    set(${LIB2}_LIBS
        utils/jsoncpp/include/json/allocator.h
        utils/jsoncpp/include/json/assertions.h
        utils/jsoncpp/include/json/config.h
        utils/jsoncpp/include/json/forwards.h
        utils/jsoncpp/include/json/json_features.h
        utils/jsoncpp/include/json/reader.h
        utils/jsoncpp/include/json/value.h
        utils/jsoncpp/include/json/version.h
        utils/jsoncpp/include/json/writer.h
        
        utils/jsoncpp/src/lib_json/json_reader.cpp
        utils/jsoncpp/src/lib_json/json_tool.h
        utils/jsoncpp/src/lib_json/json_value.cpp
        utils/jsoncpp/src/lib_json/json_valueiterator.inl
        utils/jsoncpp/src/lib_json/json_writer.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB2} SHARED ${${LIB2}_LIBS})
    else()
        add_library(${LIB2} STATIC ${${LIB2}_LIBS})
    endif()
endif()

## Set the mr_mqtt library
if(BUILD_LIB_MR_MQTT)
    list(GET LIBS_LIST 3 LIB3)
    set(${LIB3}_LIBS
        include/core/robot/mr_mqtt.h
        src/core/robot/mr_mqtt.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB3} SHARED ${${LIB3}_LIBS})
    else()
        add_library(${LIB3} STATIC ${${LIB3}_LIBS})
    endif()
    
    target_link_libraries(${LIB3} ${MQTT_C_LIBRARY} ${MQTT_CPP_LIBRARY})
endif()

## Set the mr_conio library
if(BUILD_LIB_MR_CONIO)
    list(GET LIBS_LIST 4 LIB4)
    set(${LIB4}_LIBS
        include/core/common/conio.h
        src/core/common/conio.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB4} SHARED ${${LIB4}_LIBS})
    else()
        add_library(${LIB4} STATIC ${${LIB4}_LIBS})
    endif()
endif()

## Set the mr_audio library
if(BUILD_LIB_MR_AUDIO)
    list(GET LIBS_LIST 5 LIB5)
    set(${LIB5}_LIBS
        include/core/common/audio.h
        src/core/common/audio.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB5} SHARED ${${LIB5}_LIBS})
    else()
        add_library(${LIB5} STATIC ${${LIB5}_LIBS})
    endif()
    
    target_link_libraries(${LIB5} ${MPG123_LIBRARY} ${AO_LIBRARY})
endif()

## Set the mr_config library
if(BUILD_LIB_MR_CONFIG)
    list(GET LIBS_LIST 6 LIB6)
    set(${LIB6}_LIBS
        include/core/common/config.h
        src/core/common/config.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB6} SHARED ${${LIB6}_LIBS})
    else()
        add_library(${LIB6} STATIC ${${LIB6}_LIBS})
    endif()
endif()

## Set the mr_grpc_proto library
if(BUILD_LIB_MR_GRPC_PROTO)
    list(GET LIBS_LIST 7 LIB7)
    set(${LIB7}_LIBS
        ${mr_mh_grpc_srcs}
        ${mr_mh_grpc_hdrs}
        ${mr_mh_proto_srcs}
        ${mr_mh_proto_hdrs}
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB7} SHARED ${${LIB7}_LIBS})
    else()
        add_library(${LIB7} STATIC ${${LIB7}_LIBS})
    endif()
    
    target_link_libraries(${LIB7} ${REFLECTION} ${GRPC_GRPCPP} ${PROTOBUF_LIBPROTOBUF})
endif()

## Set the mr_app_proto library
if(BUILD_LIB_MR_APP_PROTO)
    list(GET LIBS_LIST 8 LIB8)
    set(${LIB8}_LIBS
        ${mr_app_proto_srcs}
        ${mr_app_proto_hdrs}
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB8} SHARED ${${LIB8}_LIBS})
    else()
        add_library(${LIB8} STATIC ${${LIB8}_LIBS})
    endif()
    
    target_link_libraries(${LIB8} ${REFLECTION} ${PROTOBUF_LIBPROTOBUF})
endif()

## Set the mr_3d_scan library
if(BUILD_LIB_MR_3D_SCAN)
    list(GET LIBS_LIST 9 LIB9)
    set(${LIB9}_LIBS
        include/core/robot/mr_3d_scan.h
        src/core/robot/mr_3d_scan.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB9} SHARED ${${LIB9}_LIBS})
    else()
        add_library(${LIB9} STATIC ${${LIB9}_LIBS})
    endif()
    
    target_link_libraries(${LIB9} ${LIB1} ${LIB2} ${LIB6})
endif()

## Set the mr_traj_mapping library
if(BUILD_LIB_MR_TRAJ_MAPPING)
    list(GET LIBS_LIST 10 LIB10)
    set(${LIB10}_LIBS
        include/core/robot/mr_pythread_state_lock.h
        include/core/robot/mr_traj_mapping.h
        src/core/robot/mr_traj_mapping.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB10} SHARED ${${LIB10}_LIBS})
    else()
        add_library(${LIB10} STATIC ${${LIB10}_LIBS})
    endif()
    
    target_link_libraries(${LIB10} ${PYTHON_LIBRARY})
endif()

## Set the mr_logging library
if(BUILD_LIB_MR_LOGGING)
    list(GET LIBS_LIST 11 LIB11)
    set(${LIB11}_LIBS
        include/core/robot/mr_logging.h
        src/core/robot/mr_logging.cpp
    )
    
    if(BUILD_SHARED_LIBS)
        add_library(${LIB11} SHARED ${${LIB11}_LIBS})
    else()
        add_library(${LIB11} STATIC ${${LIB11}_LIBS})
    endif()
    
    target_link_libraries(${LIB11} ${Boost_LIBRARIES})
endif()
```

### 8. set_exes.cmake

```cmake
#####################
## Set Executables ##
#####################

# Set the docs
set(DOC_EXES doc_mr)


# Set the tools
set(TOOL_EXES tool_mr)


# Set the python bindings
set(PYTHON_BINDING_EXES python_mr)


# Set the tests
set(TEST_EXES test_mr_serial)  # 0
list(APPEND TEST_EXES test_mr_mqtt) # 1
list(APPEND TEST_EXES test_mr_audio_play1)  # 2
list(APPEND TEST_EXES test_mr_audio_play2)  # 3
list(APPEND TEST_EXES test_mr_audio_play3)  # 4
list(APPEND TEST_EXES test_mr_config)  # 5
list(APPEND TEST_EXES test_mr_grpc_proto)  # 6
list(APPEND TEST_EXES test_mr_app_proto)  # 7
list(APPEND TEST_EXES test_mr_python)  # 8
list(APPEND TEST_EXES test_mr_logging)  # 9
list(APPEND TEST_EXES test_mr)  # 10

## Set the test_mr_serial
if(BUILD_EXE_TEST_MR_SERIAL)
    list(GET TEST_EXES 0 TEST0)
    add_executable(${TEST0} tests/test_mr_serial.cpp)
    add_dependencies(${TEST0} ${LIB1} ${LIB2})
    target_link_libraries(${TEST0} ${LIB1} ${LIB2})
endif()

## Set the test_mr_mqtt
if(BUILD_EXE_TEST_MR_MQTT)
    list(GET TEST_EXES 1 TEST1)
    add_executable(${TEST1} tests/test_mr_mqtt.cpp)
    add_dependencies(${TEST1} ${LIB3})
    target_link_libraries(${TEST1} ${LIB3})
endif()

## Set the test_mr_audio_play1
if(BUILD_EXE_TEST_MR_AUDIO_PLAY1)
    list(GET TEST_EXES 2 TEST2)
    add_executable(${TEST2} tests/test_mr_audio_play1.cpp)
    target_link_libraries(${TEST2} ${ASOUND_LIBRARY})
endif()

## Set the test_mr_audio_play2
if(BUILD_EXE_TEST_MR_AUDIO_PLAY2)
    list(GET TEST_EXES 3 TEST3)
    add_executable(${TEST3} tests/test_mr_audio_play2.cpp)
    target_link_libraries(${TEST3} ${MPG123_LIBRARY} ${AO_LIBRARY})
endif()

## Set the test_mr_audio_play3
if(BUILD_EXE_TEST_MR_AUDIO_PLAY3)
    list(GET TEST_EXES 4 TEST4)
    add_executable(${TEST4} tests/test_mr_audio_play3.cpp)
    add_dependencies(${TEST4} ${LIB5})
    target_link_libraries(${TEST4} ${LIB5})
endif()

## Set the test_mr_config
if(BUILD_EXE_TEST_MR_CONFIG)
    list(GET TEST_EXES 5 TEST5)
    add_executable(${TEST5} tests/test_mr_config.cpp)
    add_dependencies(${TEST5} ${LIB6})
    target_link_libraries(${TEST5} ${LIB6})
endif()

## Set the test_mr_grpc_proto
if(BUILD_EXE_TEST_MR_GRPC_PROTO)
    list(GET TEST_EXES 6 TEST6)
    add_executable(${TEST6} tests/test_mr_grpc_proto.cpp)
    add_dependencies(${TEST6} ${LIB7} ${REFLECTION} ${GRPC_GRPCPP} ${PROTOBUF_LIBPROTOBUF})
    target_link_libraries(${TEST6} ${LIB7} ${REFLECTION} ${GRPC_GRPCPP} ${PROTOBUF_LIBPROTOBUF})
endif()

## Set the test_mr_app_proto
if(BUILD_EXE_TEST_MR_APP_PROTO)
    list(GET TEST_EXES 7 TEST7)
    add_executable(${TEST7} tests/test_mr_app_proto.cpp)
    add_dependencies(${TEST7} ${LIB8} ${REFLECTION} ${PROTOBUF_LIBPROTOBUF})
    target_link_libraries(${TEST7} ${LIB8} ${REFLECTION} ${PROTOBUF_LIBPROTOBUF})
endif()

## Set the test_mr_python
if(BUILD_EXE_TEST_MR_PYTHON)
    list(GET TEST_EXES 8 TEST8)
    add_executable(${TEST8} tests/test_mr_python.cpp)
    target_link_libraries(${TEST8} ${PYTHON_LIBRARY})
endif()

## Set the test_mr_logging
if(BUILD_EXE_TEST_MR_LOGGING)
    list(GET TEST_EXES 9 TEST9)
    add_executable(${TEST9} tests/test_mr_logging.cpp)
    add_dependencies(${TEST9} ${LIB11})
    target_link_libraries(${TEST9} ${LIB11})
endif()

## Set the test_mr
if(BUILD_EXE_TEST_MR)
    list(GET TEST_EXES 10 TEST10)
    add_executable(${TEST10} tests/test_mr.cpp)
    add_dependencies(${TEST10} ${LIB1} ${LIB2} ${LIB4} ${LIB5})
    target_link_libraries(${TEST10} ${LIB1} ${LIB2} ${LIB4} ${LIB5} ${PYTHON_LIBRARY})
endif()


# Set the examples
set(EXAMPLE_EXES example_mr)  # 0
list(APPEND EXAMPLE_EXES example_mr_meta_skill) # 1

## Set the example_mr
if(BUILD_EXE_EXAMPLE_MR)
    list(GET EXAMPLE_EXES 0 EXAMPLE0)
    add_executable(${EXAMPLE0} examples/example_mr.cpp)
    add_dependencies(${EXAMPLE0} 
        ${LIB1}  # mr_serial
        ${LIB2}  # jsoncpp
        ${LIB3}  # mr_mqtt
        ${LIB4}  # mr_conio
        ${LIB5}  # mr_audio
        ${LIB6}  # mr_config
        ${LIB7}  # mr_grpc_proto
        ${LIB8}  # mr_app_proto
        ${LIB9}  # mr_3d_scan
        ${LIB10}  # mr_traj_mapping
        ${LIB11}  # mr_logging
        ${REFLECTION}  # grpc_reflection
        ${GRPC_GRPCPP}  # grpc
        ${PROTOBUF_LIBPROTOBUF}  # protobuf
    )
    target_link_libraries(${EXAMPLE0} 
        ${LIB1}  # mr_serial
        ${LIB2}  # jsoncpp
        ${LIB3}  # mr_mqtt
        ${LIB4}  # mr_conio
        ${LIB5}  # mr_audio
        ${LIB6}  # mr_config
        ${LIB7}  # mr_grpc_proto
        ${LIB8}  # mr_app_proto
        ${LIB9}  # mr_3d_scan
        ${LIB10}  # mr_traj_mapping
        ${LIB11}  # mr_logging
        ${REFLECTION}  # grpc_reflection
        ${GRPC_GRPCPP}  # grpc
        ${PROTOBUF_LIBPROTOBUF}  # protobuf
    )
endif()

## Set the example_mr_meta_skill
if(BUILD_EXE_EXAMPLE_MR_META_SKILL)
    list(GET EXAMPLE_EXES 1 EXAMPLE1)
    add_executable(${EXAMPLE1} examples/example_mr_meta_skill.cpp)
    add_dependencies(${EXAMPLE1} 
        ${LIB1}  # mr_serial
        ${LIB2}  # jsoncpp
        ${LIB3}  # mr_mqtt
        ${LIB4}  # mr_conio
        ${LIB5}  # mr_audio
        ${LIB6}  # mr_config
        ${LIB7}  # mr_grpc_proto
        ${LIB8}  # mr_app_proto
        ${LIB9}  # mr_3d_scan
        ${LIB10}  # mr_traj_mapping
        ${LIB11}  # mr_logging
        ${REFLECTION}  # grpc_reflection
        ${GRPC_GRPCPP}  # grpc
        ${PROTOBUF_LIBPROTOBUF}  # protobuf
    )
    target_link_libraries(${EXAMPLE1} 
        ${LIB1}  # mr_serial
        ${LIB2}  # jsoncpp
        ${LIB3}  # mr_mqtt
        ${LIB4}  # mr_conio
        ${LIB5}  # mr_audio
        ${LIB6}  # mr_config
        ${LIB7}  # mr_grpc_proto
        ${LIB8}  # mr_app_proto
        ${LIB9}  # mr_3d_scan
        ${LIB10}  # mr_traj_mapping
        ${LIB11}  # mr_logging
        ${REFLECTION}  # grpc_reflection
        ${GRPC_GRPCPP}  # grpc
        ${PROTOBUF_LIBPROTOBUF}  # protobuf
    )
endif()


# Set the releases
set(RELEASE_EXES release_mr)  # 0

## Set the release_mr
if(BUILD_EXE_RELEASE_MR)
    list(GET RELEASE_EXES 0 RELEASE0)
    add_executable(${RELEASE0} releases/release_mr.cpp)
    add_dependencies(${RELEASE0} 
        ${LIB1}  # mr_serial
        ${LIB2}  # jsoncpp
        ${LIB3}  # mr_mqtt
        ${LIB4}  # mr_conio
        ${LIB5}  # mr_audio
        ${LIB6}  # mr_config
        ${LIB7}  # mr_grpc_proto
        ${LIB8}  # mr_app_proto
        ${LIB9}  # mr_3d_scan
        ${LIB10}  # mr_traj_mapping
        ${LIB11}  # mr_logging
        ${REFLECTION}  # grpc_reflection
        ${GRPC_GRPCPP}  # grpc
        ${PROTOBUF_LIBPROTOBUF}  # protobuf
    )
    target_link_libraries(${RELEASE0} 
        ${LIB1}  # mr_serial
        ${LIB2}  # jsoncpp
        ${LIB3}  # mr_mqtt
        ${LIB4}  # mr_conio
        ${LIB5}  # mr_audio
        ${LIB6}  # mr_config
        ${LIB7}  # mr_grpc_proto
        ${LIB8}  # mr_app_proto
        ${LIB9}  # mr_3d_scan
        ${LIB10}  # mr_traj_mapping
        ${LIB11}  # mr_logging
        ${REFLECTION}  # grpc_reflection
        ${GRPC_GRPCPP}  # grpc
        ${PROTOBUF_LIBPROTOBUF}  # protobuf
    )
endif()
```

### 9. install_config.cmake

```cmake
###########################
## Install Configuration ##
###########################

# Configure the installation
```

### 10. test_config.cmake

```cmake
########################
## Test Configuration ##
########################

# Configure the testing
```

## Anaconda

### 1. conda常用指令

> 1. 更新anaconda： conda update anaconda
> 2. 更新conda: conda update conda
> 3. 创建python环境：conda create -n [env_name] [dependency_pkgs] python=[version]
> 4. 激活python环境：conda activate [env_name]
> 5. 安装功能包：conda install [dependency_pkgs]/pip install [dependency_pkgs]
> 6. 列出所有环境： conda env list/conda info -e/conda info --envs
> 7. 列出当前环境中所有的功能包： conda list/pip list
> 8. 删除一个环境：conda remove -n [env_name] --all
> 9. 复制一个环境：conda create -n [new_env_name] --clone [origin_env]
> 10. 确认显示当前环境信息：conda info --env
> 11. 确认conda已经安装：conda --version
> 12. 退出环境至root: deactivate
> 13. 精确查找可供安装的包版本：conda search --full-name [package_full_name]
> 14. 模糊查找可供暗转过的包版本：conda search [text]
> 15. 在指定环境中安装包：conda install --name [env_name] [package_name]
> 16. 更新所有包：conda update --all/conda upgrade --all
> 17. 更新指定包：conda update [package_name]/conda upgrade [package_name]
> 18. 一般新建环境后的更新操作：conda activate [env_name] && conda install conda pip ipython anaconda && conda upgrade conda && conda update --all
> 19. 更新base环境中的conda: conda update -n base -c defaults conda
> 20. 清理环境中的缓存垃圾(conda): conda clean -p/ conda clean -t/ conda clean --all
> 21. 清理环境中的缓存垃圾(pip): pip cache purge

### 2. Ubuntu安装anaconda

> 1. 安装命令(根据安装过程给予指令)：bash Anaconda3-2023.03-1-Linux-x86_64.sh
> 2. conda的初始化配置：
> ```
> # >>> conda initialize >>>
> # !! Contents within this block are managed by 'conda init'
> __conda_setup="$('/home/$USER/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
> if [ $? -eq 0 ]; then
>     eval "$__conda_setup"
> else
>     if [ -f "/home/$USER/anaconda3/etc/profile.d/conda.sh" ]; then
>         . "/home/$USER/anaconda3/etc/profile.d/conda.sh"
>     else
>         export PATH="/home/$USER/anaconda3/bin:$PATH"
>     fi
> fi
> unset __conda_setup
> # <<< conda initialize <<<
> ```

### 3. Ubuntu卸载anaconda

> 1. 下载并执行anaconda-clean：conda activate base && conda install anaconda-clean && anaconda-clean --yes
> 2. 查看anaconda残余的文件夹并全部删除：conda info && conda deactivate && sudo rm -rf ~/anaconda3 && sudo rm -rf ~/.condarc ~/.conda ~/.continuum ~/.anaconda_backup
> 3. 修改.bashrc配置文件：删除conda initialize部分的内容

Continue reading [Startups](Startups.md){:.heading.flip-title}
{:.read-more}
