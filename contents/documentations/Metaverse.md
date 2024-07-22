---
layout: page
title: Metaverse
description: >
  Docs for metaverse.
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
last_modified_at: 2024-07-22

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

Based on the **Industrial Metaverse Platform**, the whole processes of industrial production which include requirement, design, development, testing, deployment and operating could be accelerated serval times for high efficiency and more convenience. The docs are mainly targeted for basic principles, methods, algorithms and applications in the fields of **Omniverse** and **Digital Twin**.

**JadeCong(GitHub):** [Awesome-Metaverse](https://github.com/JadeCong/Awesome-Metaverse)
{:.note}

## Omniverse

### 1. Nvidia Omniverse Framework

> Omniverse是Nvidia公司的一个开源的元宇宙平台，其是集硬件资源、核心技术、生态系统、基础应用和云的一个平台。硬件资源是指Nvidia旗下的GeForce和RTX的显卡用于平台的硬件计算；核心技术包括USD场景描述统一格式，MDL材质描述格式，RTX光线追踪等图形渲染加速技术，PhysX/Blast/Flow等物理引擎；生态系统是指基于OpenUSD协议广泛接入到Omniverse中的众多3D建模软件（如3dsMax，Maya，Blender，SketchUp），能极大丰富平台的创作来源，整合不同的行业资源；基础原生应用是Nvidia基于其核心技术和底层SDK而开发的一系列的常用的软件合集，包括USD Composer场景创作，USD Presenter场景浏览，Scene Optimizer场景优化，Isaac Sim场景解决方案仿真，Drive Sim无人驾驶仿真，Code应用及扩展开发工具，Farm Client/Farm Queue用于分布式任务处理及客户端访问，Navigator用于服务器资源管理等等；云是指可借助Nvidia的硬件资源将Omniverse部署到云端，从而更便捷的进行数据交互访问及管理。
下面逐一介绍Omniverse平台的五大部分：
>
> **Reference：**<br>
> <https://www.nvidia.com/en-us/omniverse/><br>
> <https://www.nvidia.cn/omniverse/><br>
> <https://docs.omniverse.nvidia.com/><br>
> <https://developer.nvidia.com/omniverse/get-started><br>
> <https://www.nvidia.cn/omniverse/community/><br>
> [Nvidia Learning Resources.md](<https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-nvidia-learning-resources-md>)<br>
> [Ubuntu Nvidia Omniverse.md](<https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-ubuntu-nvidia-omniverse-md>)<br>

#### 1.1 硬件资源

> Nvidia旗下有多系列的计算显卡，应用从笔记本，台式机，工作站，服务器，到集群和超级计算单元，型号从GeForce RTX，GTX，A100到H100和OVX，场景从游戏应用，图形渲染，科学计算到大模型训练，如今Nvidia已经是显卡领域的第一位。其Omniverse元宇宙平台正是以这些强大的硬件资源作为基础，再结合其核心技术来开发相关的应用和扩展，才形成现在的平台和生态。
>
> （1）GeForce RTX
>
> ![GeForce_RTX_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/GeForce_RTX_1.PNG)<br>
> ![GeForce_RTX_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/GeForce_RTX_2.PNG)<br>
>
> 目前，对于Omniverse Standard版本用户，其主要使用的GeForce RTX系列的显卡，具体的要求可参考如下：
>
> ![GeForce_RTX_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/GeForce_RTX_3.PNG)
>
> Enterprise版本的对硬件资源的要求如下：
>
> ![GeForce_RTX_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/GeForce_RTX_4.PNG)
>
> Cloud版本的硬件资源由Nvidia官方提供，可根据实际需要进行配置，需要联系相关客服，参考连接如下。
>
> （2）Nvidia OVX
>
> ![Nvidia_OVX_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Nvidia_OVX_1.png)<br>
> ![Nvidia_OVX_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Nvidia_OVX_2.png)<br>
> ![Nvidia_OVX_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Nvidia_OVX_3.png)<br>
>
> **Reference：**<br>
> <https://docs.omniverse.nvidia.com/materials-and-rendering/latest/common/technical-requirements.html><br>
> <https://www.nvidia.cn/omniverse/enterprise/support/><br>
> <https://www.nvidia.cn/omniverse/cloud/><br>
> <https://www.nvidia.cn/geforce/><br>
> <https://www.nvidia.cn/design-visualization/><br>
> <https://www.nvidia.cn/geforce/graphics-cards/40-series/><br>
> <https://www.nvidia.cn/data-center/products/ovx/><br>

#### 1.2 核心技术

> （1）OpenUSD
>
> USD最开始由皮克斯动画公司生成的一种3D动画的描述格式，后面慢慢形成一个OpenUSD协议联盟（AOUSD），有不同大型图形、图像、动画等公司加入，随着发展壮大，Nvidia对USD进行了扩充丰富，如今便形成了构建元宇宙的场景描述的标准格式。
>
> ![OpenUSD_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/OpenUSD_1.png)<br>
> ![OpenUSD_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/OpenUSD_2.png)<br>
> ![OpenUSD_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/OpenUSD_3.png)<br>
> ![OpenUSD_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/OpenUSD_4.png)<br>
> ![OpenUSD_5](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/OpenUSD_5.png)<br>
>
> **Reference：**<br>
> <https://www.nvidia.cn/omniverse/usd/><br>
> <https://docs.omniverse.nvidia.com/usd/latest/index.html><br>
> <https://aousd.org/><br>
> <https://www.youtube.com/watch?v=-iCUjNk2aiA&ab_channel=NVIDIADeveloper><br>
>
> （2）MDL
>
> MDL是Nvidia对USD的功能扩展，是用来描述场景中对象的材质和光线，其是基于物理性质来描述材质且支持共享，能获得极佳的视觉渲染效果，而且高效便捷，所以成为Nvidia元宇宙布局中重要的核心技术。
>
> ![MDL_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/MDL_1.png)<br>
> ![MDL_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/MDL_2.png)<br>
> ![MDL_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/MDL_3.png)<br>
> ![MDL_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/MDL_4.png)<br>
>
> **Reference：**<br>
> <https://www.nvidia.cn/design-visualization/technologies/material-definition-language/><br>
> <https://developer.nvidia.com/rendering-technologies/mdl-sdk><br>
> <https://www.nvidia.cn/design-visualization/technologies/vmaterials/><br>
> <https://forums.developer.nvidia.com/c/gaming-and-visualization-technologies/visualization/vmaterials/168><br>
>
> （3）RTX
>
> Nvidia RTX 平台融合了光线追踪、深度学习和光栅化，通过 NVIDIA Turing GPU 架构以及对行业领先工具和 API 的支持，从根本上改变了内容创作者和开发者的创作过程。基于 RTX 平台构建的应用程序带来了实时逼真渲染和 AI 增强的图形、视频和图像处理功能，使数百万设计师和艺术家能够以全新的方式创作令人惊叹的内容。RTX 平台提供在高级硬件上运行的软件 API 和 SDK，以提供能够加速和增强图形、照片、图像和视频处理的解决方案。
>
> ![RTX_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/RTX_1.png)<br>
> ![RTX_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/RTX_2.png)<br>
> ![RTX_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/RTX_3.png)<br>
>
> **Reference：**<br>
> <https://www.nvidia.cn/design-visualization/technologies/rtx/><br>
> <https://developer.nvidia.com/rtx><br>
> <https://www.nvidia.cn/design-visualization/><br>
>
> （4）PhysX/Blast/Flow/FleX
>
> Nvidia PhysX 是一种可扩展的多平台物理仿真解决方案，可为智能手机、高端多核 CPU 和 GPU 等各类设备提供支持，Nvidia可提供三个核心物理模拟库：PhysX、Blast 和 Flow以用于不同的场景。另外FleX 是一种基于粒子的仿真技术，用于呈现实时视觉特效，主要应用在柔性变形体，流体，粒子系统等场景。
>
> ![PhysX_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/PhysX_1.png)<br>
> ![PhysX_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/PhysX_2.png)<br>
> ![PhysX_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/PhysX_3.png)<br>
>
> PhysX 5 提供了一个统一框架，用于刚体、粒子和可变形物体仿真。PhysX 5 包含高级版 PhysX 4 功能，并融合了 FleX 的功能，FleX 是我们的 GPU 物理系统，可通过形状匹配实现离散粒子仿真、液体、布料、充气物体、质量弹簧系统、伪刚体和塑料变形。此外，PhysX 5 还为使用 Corotational FEM 模型进行的变形仿真带来支持。这些新功能与现有的 PhysX 刚体动力学无缝交互，可提供高效灵活的多物理模拟，从而仿真复杂的耦合问题。PhysX 5 由 NVIDIA Omniverse 平台面向公众独家提供。
>
> ![PhysX_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/PhysX_4.png)<br>
> ![PhysX_5](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/PhysX_5.png)<br>
> ![PhysX_6](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/PhysX_6.png)<br>
>
> **Reference：**<br>
> <https://developer.nvidia.cn/physx-sdk><br>
> <https://developer.nvidia.cn/flex><br>
> <https://www.nvidia.cn/on-demand/playlist/playList-6e74e1e6-55be-4e6b-aee4-9a53715e70fc/><br>

#### 1.3 生态系统

> Nvidia Omniverse的生态系统是Nvidia为了构建元宇宙平台而建立的一个软件生态，其将连接器、扩展程序、基础应用和第三方工具慢慢纳入到该生态中。连接器是一种插件或者服务来将Omniverse连接到各大行业中的建模图形渲染软件，从而丰富Omniverse的生态资源。扩展程序是基于Omniverse Kit SDK构建的有特定功能的基础模块，用于构建用户自己的工作流。
> Omniverse Connect 允许您将自己喜欢的应用程序用作 Omniverse 平台的一流内容交付工具。借助Revit，Rhino，Maya，虚幻引擎等工具，这些已经功能强大的工具将超级充满Omniverse的所有潜力。实时协作、路径追踪并排渲染、核心快照和USD转换只是使用 Omniverse 连接器的一些直接好处。再加上这些好处，一个简单的集成UI，你会发现自己在全宇宙中为3D世界做出贡献比你想象的要容易。
>
> ![Ecosystem_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Ecosystem_1.png)<br>
> ![Ecosystem_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Ecosystem_2.png)<br>
> ![Ecosystem_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Ecosystem_3.png)<br>
>
> **Reference：**<br>
> <https://www.nvidia.cn/omniverse/ecosystem/><br>
> <https://docs.omniverse.nvidia.com/connect/latest/index.html><br>

#### 1.4 基础应用

> 基础应用是一系列Nvidia基于Omniverse Kit SDK开发的应用软件，用于构建元宇宙平台及给普通用户构建自己的工作流。常用核心基础应用的软件包括：USD View，USD Presenter，USD Explorer，USD Composer，Scene Optimizer，Code，Isaac Sim，Drive Sim，Omniverse Streaming Client，Farm等。下面一一介绍其相关功能。
>
> ![Basic_Apps](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Basic_Apps.png)<br>
>
> **Reference：**<br>
> <https://docs.omniverse.nvidia.com/index.html><br>
> [Nvidia Learning Resources.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-nvidia-learning-resources-md)<br>
>
> （1）USD Presenter
>
> USD Presenter（替代USD View）一个简单、功能强大的参考应用程序，用于以令人惊叹的、物理上准确的照片级真实感交互式查看和注释 3D 设计项目。其具有如下特点：
> 简单直观的设计：无需技术知识即可轻松导航并与美观、物理准确的基于USD的模拟进行交互。
> 轻松审查：易于使用的审查和注释工具（如相机航点、注释和标记）可实现无缝的项目审查。使用完全可配置的剖面图工具评估从楼层平面图到照明方案的细节。
> Make It Real： View 由 NVIDIA Omniverse RTX 渲染器提供支持，这是一款支持多 GPU 的高级渲染器，可以实时输出超复杂的场景。渲染器具有两种模式：启用 RTX 的光线追踪可实现闪电般的性能，路径追踪可实现最高保真度的结果。通过拨动开关进行油门，以便在大型场景中快速导航。
> 实时无缝协作：连接技术设计团队、项目经理、主管、建筑师、客户，以实现更顺畅的审查流程。
>
> ![USD_Presenter](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/USD_Presenter.png)<br>
>
> **Reference：**<br>
> <https://docs.omniverse.nvidia.com/usdview/latest/index.html><br>
> <https://docs.omniverse.nvidia.com/presenter/latest/index.html><br>
>
> （2）USD Explorer
>
> USD Explorer 是一款 Omniverse™ 应用程序，用于审查和建造工厂、仓库等大型设施。它是使用 NVIDIA Omniverse™ 套件构建的。场景描述和内存模型基于皮克斯的USD。
>
> ![USD_Explorer_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/USD_Explorer_1.png)<br>
> ![USD_Explorer_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/USD_Explorer_2.png)<br>
>
> **Reference：**<https://docs.omniverse.nvidia.com/explorer/latest/index.html>
>
> （3）USD Composer
>
> USD Composer 是一款用于世界构建的 Omniverse™ 应用程序，允许用户组装、打光、模拟和渲染大型场景。它是使用NVIDIA Omniverse™套件构建的。场景描述和内存模型基于皮克斯的USD。Omniverse USD Composer 利用 USD 的高级工作流程，如图层、变体、实例化等等。结合 MDL 材质描述和在 NVIDIA RTX 显卡上运行的基于 RTX 的渲染器，您可以生成视觉上引人注目且物理上准确的世界。Omniverse USD Composer与Pixar的Hydra集成在一起，因此可用于在任何Hydra渲染器（例如Storm，Embree，PRMan等）中显示USD内容，这些渲染器是针对适当的USD版本构建的。
> USD Composer 允许您导航、修改和渲染 Pixar USD 内容。除了 USD，Omniverse USD Composer 还可以使用 Omniverse 连接器连接到许多应用程序，以将 3D 模型、材质、动画和光照发布为 USD 格式。连接器可用于许多现有工具，如Revit、Sketchup、3ds Max、Rhino、Grasshopper、Maya、Unreal、Blender等。如果您没有连接器，您还可以直接在应用程序中将 FBX、OBJ、Gltf、LXO 转换为 USD 格式。此外，许多没有原生支持 USD 的 Omniverse 连接器的工具都可以引入 Omniverse USD Composer。
>
> ![USD_Composer](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/USD_Composer.png)<br>
>
> **Reference：**<https://docs.omniverse.nvidia.com/composer/latest/index.html>
>
> （4）Scene Optimizer
>
> Scene Optimizer场景优化器是一个命令行工具，可以优化 USD 场景，允许将复杂场景转换为更轻量级的表示形式，从而可以更快地显示和评估。
>
> ![Scene_Optimizer](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Scene_Optimizer.png)<br>
>
> **Reference：**<https://docs.omniverse.nvidia.com/scene-optimizer/latest/index.html>
>
> （5）Code
>
> Omniverse Code 是面向开发人员的集成开发环境 （IDE），使用户能够构建 Omniverse 扩展程序、应用和微服务。
>
> ![Omniverse_Code](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Code.png)<br>
>
> **Reference：**<https://docs.omniverse.nvidia.com/code/latest/index.html>
>
> （6）Isaac Sim
>
> NVIDIA Omniverse Isaac Sim 是 NVIDIA Omniverse™ 平台的机器人模拟工具包。Isaac Sim具有构建虚拟机器人世界和实验的基本功能。它为研究人员和从业者提供了创建强大、物理上准确的模拟和合成数据集所需的工具和工作流程。Isaac Sim 通过 ROS/ROS2 支持导航和操作应用程序。它模拟来自 RGB-D、激光雷达和 IMU 等传感器的传感器数据，用于各种计算机视觉技术，例如域随机化、地面真实标记、分割和边界框。
>
> ![Isaac_Sim_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Isaac_Sim_1.png)<br>
>
> Isaac Sim作为Omniverse的仿真平台，其软件结构和工作流如下图所示：
>
> ![Isaac_Sim_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Isaac_Sim_2.png)<br>
> ![Isaac_Sim_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Isaac_Sim_3.png)<br>
>
> **Reference：**<br>
> <https://docs.omniverse.nvidia.com/isaacsim/latest/index.html><br>
> [Ubuntu Nvidia Omniverse.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-ubuntu-nvidia-omniverse-md)<br>
>
> （7）Drive Sim
>
> NVIDIA DRIVE Sim™ 是一个端到端模拟平台，从头开始构建，用于运行基于物理的大规模多传感器模拟。它具有开放性、可扩展性和模块化，支持从概念到部署的自动驾驶汽车开发和验证，从而提高开发人员的工作效率并加快上市时间。其具有以下特性：
>
> ![Drive_Sim_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_1.png)<br>
> ![Drive_Sim_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_2.png)<br>
> ![Drive_Sim_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_3.png)<br>
> ![Drive_Sim_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_4.png)<br>
> ![Drive_Sim_5](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_5.png)<br>
> ![Drive_Sim_6](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_6.png)<br>
> ![Drive_Sim_7](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_7.png)<br>
>
> 作为一个开放平台，NVIDIA DRIVE Sim 拥有丰富的合作伙伴生态系统，他们为开发者和其他生态系统成员创建和部署仿真模型，以加速大规模的自动驾驶汽车开发和测试。DRIVE Sim 基于 NVIDIA Omniverse（基于通用场景描述 （OpenUSD） 的可扩展开发平台）构建，还连接到构建和运营元宇宙应用程序和数字孪生的合作伙伴生态系统。
>
> ![Drive_Sim_8](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Drive_Sim_8.png)<br>
>
> **Reference：**<br>
> <https://www.nvidia.com/en-sg/self-driving-cars/simulation/><br>
> <https://developer.nvidia.com/drive/simulation><br>
>
> （8）Omniverse Streaming Client
>
> Omniverse Streaming Client 是一款轻量级应用程序，允许用户连接到部署在网络或互联网上的 Omniverse 应用程序。该应用程序可以访问各种 Omniverse 应用程序，甚至可以从不符合最低要求的设备访问。其中工作流包括：
> 从低功耗设备或超极本访问 Omniverse 应用程序；
> 促进通过网络或互联网共享资源，允许用户连接到由 IT 资源配置的 Omniverse 应用程序。
>
> ![Omniverse_Streaming_Client](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Streaming_Client.png)<br>
>
> **Reference：**<https://docs.omniverse.nvidia.com/streaming-client/latest/index.html>
>
> （9）Farm
>
> Omniverse Farm Queue和 Omniverse Farm Agent允许您在后台运行任务，并运行您或其他人定义的自动化作业。Farm Queue和 Farm Agent都是从头开始设计的，与基础结构无关，并采用微服务体系结构以实现灵活性和可扩展性。这意味着它们设计为在典型的工作站、裸机服务器甚至高级云平台（如 Kubernetes）上运行。
>
> Farm Queue和Farm Agent可用于以下场景：
渲染帧或影片剪辑；
在多台计算机之间共享资源；
自动执行重复或耗时的任务，例如批处理文件转换或验证资产命名约定；
生成转盘样式的资源预览；
生成资产的详细信息级别；
模拟物理或烘焙流体缓存；
生成USD场景以训练机器学习模型；
将 AEC 项目中的 BIM 数据导出为USD图层；
>
> ![Omniverse_Farm](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Farm.png)<br>
>
> **Reference：**<https://docs.omniverse.nvidia.com/farm/latest/index.html>

#### 1.5 云

> Nvidia的云端主要是面向企业级用户，其主要不同在于数据安全性和管理，计算资源和专业的技术支持服务方面的优势。目前我们正在使用的是Standard的标准版本，Standard跟Enterprise和Cloud版本的具体区别如下：
>
> ![Omniverse_Cloud_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Cloud_1.png)<br>
> ![Omniverse_Cloud_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Cloud_2.png)<br>
>
> Cloud版本的Omniverse的简介如下图所示，详细内容可查可参考链接。
>
> ![Omniverse_Cloud_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Cloud_3.png)<br>
> ![Omniverse_Cloud_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Cloud_4.png)<br>
> ![Omniverse_Cloud_5](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Cloud_5.png)<br>
>
> **Reference：**<br>
> <https://www.nvidia.com/en-us/omniverse/download/><br>
> <https://www.nvidia.cn/omniverse/cloud/><br>
> <https://www.nvidia.cn/omniverse/enterprise/support/><br>

#### 1.6 开发者路径

> NVIDIA Omniverse™ 是一个模块化开发平台（如下图所示），用于构建 3D 工作流程、工具、应用程序和服务。基于皮克斯的通用场景描述（OpenUSD）、NVIDIA RTX™ 和 NVIDIA AI 技术，开发人员使用 Omniverse 为工业数字化和感知 AI 应用构建实时 3D 仿真解决方案。
>
> ![Omniverse_Developer_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Developer_1.png)<br>
>
> 下面是基于Omniverse Kit SDK开发的应用于Isaac Sim中的多种Extension（Simulation/Graph/Example/Services等）：
>
> ![Omniverse_Developer_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Developer_2.png)<br>
>
> NVIDIA Omniverse 是一个完全可组合的平台，可从工作站扩展到云端，使开发人员能够以最少的编码构建高级、可扩展的解决方案。
>
> ![Omniverse_Developer_3](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Developer_3.png)<br>
> ![Omniverse_Developer_4](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Developer_4.png)<br>
>
> Omniverse 项目由配置文件、源代码和资产组成，可用于使用 Omniverse Platform API 执行任务。使用这些组件，您可以开发：
Extensions：用于增强应用程序功能和行为的扩展；
Applications：为特定领域和工作流量身定制的应用程序；
Services：用于无头处理要求苛刻的 USD 工作流的服务；
Connectors：将第三方应用程序桥接到 Omniverse 的连接器。
>
> 开发 Omniverse 项目的过程通常涉及一系列步骤。开发人员的角色往往从创建 Omniverse 项目开始，通常以打包构建结束。从那里，可以将软件包发布到存储系统，然后存储系统将提供它以进行部署或安装。
>
> ![Omniverse_Developer_5](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Developer_5.png)<br>
>
> **Reference：**<br>
> <https://developer.nvidia.com/omniverse><br>
> <https://developer.nvidia.com/omniverse/get-started/><br>
> <https://docs.omniverse.nvidia.com/dev-guide/latest/developer_api.html><br>
> <https://docs.omniverse.nvidia.com/install-guide/latest/overview.html><br>
> <https://docs.omniverse.nvidia.com/workflows/latest/index.html><br>
> <https://docs.omniverse.nvidia.com/platform/latest/overview.html><br>
> [Omniverse Learning Resources.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-nvidia-learning-resources-md)<br>

### 2. Nvidia Learning Resources

#### 2.1 Getting Started for Beginner

##### 1. Basic Concepts

>- 1.1 Omniverse Overview
>
>> Platform Overview（网址包含了Omniverse Platform的简介概述，主要包括平台的组成部分）：<https://docs.omniverse.nvidia.com/platform/latest/index.html>
>>
>> Platform Structure（网址包含了平台的架构介绍，并从用户和开发者两个对象角度去理解整个平台架构）：<https://docs.omniverse.nvidia.com/platform/latest/structure.html>
>>
>>Platform Standard Formats（网址介绍了Omniverse平台中对场景USD及材料MDL的标准格式及允许的转换格式）：<https://docs.omniverse.nvidia.com/platform/latest/common/formats.html>
>
>- 1.2 USD(Universal Scene Description)
>
>> 该网址详细介绍了USD文件格式的发展，生态及基础教程：<https://docs.omniverse.nvidia.com/usd/latest/index.html>
>
>- 1.3 MDL(Material Definition Language)
>
>> 该网址详细介绍了材料渲染及MDL文件格式和基础教程：<https://docs.omniverse.nvidia.com/materials-and-rendering/latest/index.html>
>
>- 1.4 Connectors
>
>> 该网址详细介绍了其他的建模设计软件（如3dsMax/Blender/Houdini/Rhino等）如何连接到Omniverse并加快Omniverse场景的建模和设计：<https://docs.omniverse.nvidia.com/connect/latest/index.html>
>
>- 1.5 Nucleus
>
>> 该网址详细介绍了Nucleus服务器的功能（在线数据库共享及团队协作以加快场景建模及程序的开发迭代）及如何部署使用：<https://docs.omniverse.nvidia.com/nucleus/latest/index.html>
>
>- 1.6 Extension
>
>> 该网址详细介绍了Extension的功能（用于构建基于Kit的应用程序，其可用于开发主干管道的关键基础设施、增强工作流及向Omniverse增加功能）及Omniverse平台核心的扩展和如何自己构建扩展：<https://docs.omniverse.nvidia.com/extensions/latest/index.html>
>
>- 1.7 Microservices
>
>>该网址详细介绍了Microservices的功能（用于将一些核心的服务功能抽离处理以便于开发者更高效便捷地构建应用程序来服务目标平台）及基础部件：<https://docs.omniverse.nvidia.com/services/latest/index.html>
>
>- 1.8 Kit
>
>> 该网址详细介绍了Kit的功能（Omniverse采用分布式模块化设计结构，Kit作为Ouniverse平台的基础工具包组件用于为自己的生态系统平台开发拓展插件、微服务及应用程序）、架构、核心接口、开发及发布扩展等：<https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/kit_overview.html>
>
>- 1.9 Workflows
>
>> 该网址详细介绍了Omniverse平台的工作流程（从配置环境、加载场景、修改操作场景、用户接口到仿真及应用）：<https://docs.omniverse.nvidia.com/workflows/latest/index.html>

##### 2. Basic Tutorials

>- 2.1 For User
>
>> 针对普通用户而言，在熟悉了上述的基础概念之后，现在可以使用Omniverse平台基础应用（如USD View/USD Composer/Scene Optimizer/USD Presenter/Isaac Sim/Navigator/Farm）来进行创建场景、运动仿真、管理资源和创建云工作流等等。
>>
>>- 2.1.1 USD View
>>
>> 用于查看、导航、检查USD场景的轻量化工具：<https://docs.omniverse.nvidia.com/usdview/latest/index.html>
>>
>>- 2.1.2 USD Composer(Formerly Omniverse Create)
>>
>> 用于开发和创作USD场景的工具，允许用户组装、打光、模拟和渲染大型场景：<https://docs.omniverse.nvidia.com/composer/latest/index.html>
>>
>>- 2.1.3 Scene Optimizer
>>
>> 场景优化器是一个命令行工具，可以优化USD场景，允许将复杂场景转换为更轻量级的表示形式，从而可以更快地显示和评估：<https://docs.omniverse.nvidia.com/scene-optimizer/latest/index.html>
>>
>>- 2.1.4 USD Presenter(Formerly Omniverse View)
>>
>> 用于交互式查看、浏览USD文件的应用工具：<https://docs.omniverse.nvidia.com/presenter/latest/index.html>
>>
>>- 2.1.5 Isaac Sim
>>
>> 用来构建机器人世界并进行仿真实验的应用工具包，其为研究人员和从业者提供了创建强大、物理上准确的模拟和合成数据集所需的工具和工作流程：<https://docs.omniverse.nvidia.com/isaacsim/latest/index.html>
>>
>>- 2.1.6 Navigator
>>
>> 用于导航和管理Omniverse Nucleus服务器中内容的应用，其能为任何核心主机提供对文件、用户和权限的便捷访问：<https://docs.omniverse.nvidia.com/navigator/latest/index.html>
>>
>>- 2.1.7 Farm
>>
>> Omniverse Farm Queue 和 Omniverse Farm Agent允许用户在后台运行任务，其允许用户在主机、工作站、服务器和云平台上运行自定义的自动化作业任务：<https://docs.omniverse.nvidia.com/farm/latest/index.html>
>
>- 2.2 For Developer
>
>> 针对开发者而言，在熟悉了上述的基础概念之后，现在可以使用Omniverse Kit工具包编写Extension扩展来实现一些功能模块，编写Services微服务来实现一些平台基础服务，编写自己的App来实现相关的平台应用。
>>
>>- 2.2.1 Kit Python Extension Template
>>
>> Python扩展OmniGraph Node：<https://docs.omniverse.nvidia.com/isaacsim/latest/development_tools_tutorials.html><br>
>> <https://docs.omniverse.nvidia.com/extensions/latest/ext_omnigraph.html>
>>
>> Python扩展教程：<https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/extensions_basic.html><br>
>> <https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/extensions_advanced.html>
>>
>> 测试Python扩展：<https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/testing_exts_python.html>
>>
>>- 2.2.2 Kit C++ Extension Template
>>
>> C++扩展模板：<https://docs.omniverse.nvidia.com/kit/docs/kit-extension-template-cpp/latest/index.html>
>>
>> 测试C++扩展：<https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/testing_exts_cplusplus.html>
>>
>>- 2.2.3 Building Microservices
>>
>>构建微服务教程：<https://docs.omniverse.nvidia.com/services/latest/design/getting_started.html>
>>
>> 微服务模板示例：<https://github.com/NVIDIA-Omniverse/deep-dive-into-microservices>
>>
>>- 2.2.4 Building Apps
>>
>> 构建应用教程：<https://docs.omniverse.nvidia.com/dev-guide/latest/build-apps.html>
>>
>> 创建基于Kit应用程序：<https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/creating_kit_apps.html>

##### 3. Advanced Tutorials

>- 3.1 For User
  Nvidia自学培训教程（按步骤层次学习）：<https://www.nvidia.com/en-us/training/online/>
>- 3.2 For Developer
  Omniverse 开发者官网（包括高阶教程及开发资源）：<https://developer.nvidia.com/omniverse>

#### 2.2 Nvidia Docs Center

1. Nvidia官方文档中心
> 该网址包含了Nvidia所有的文档（主要是面向各种软件的基础学习文档）：<https://docs.nvidia.com/>

2. Nvidia Omniverse官方文档
> 该网址包含了所有的Omnivese的相关基础文档：<https://docs.omniverse.nvidia.com/index.html>

3. Nvidia Omniverse Platform官方文档
> - Omniverse USD（用于描述Omniverse场景及其他仿真内容）：<https://docs.omniverse.nvidia.com/usd/latest/index.html><br><https://www.nvidia.com/en-us/omniverse/usd/>（Universal Scene Description专题介绍）<br>
> - Omniverse Nucleus（用于Omniverse数据库及协作共享）：<https://docs.omniverse.nvidia.com/nucleus/latest/index.html><br>
> - Omniverse Extensions（用于基于Kit的扩展应用开发）：<https://docs.omniverse.nvidia.com/extensions/latest/index.html><br><https://docs.omniverse.nvidia.com/kit/docs/kit-extension-template-cpp/latest/index.html> (Kit C++ Extension Template)<br>
> - Omniverse Kit（用于开发Omniverse基础应用的开发工具包/库）：<https://docs.omniverse.nvidia.com/dev-guide/latest/kit-architecture.html><br><https://docs.omniverse.nvidia.com/kit/docs/kit-manual/latest/guide/kit_overview.html><br><https://docs.omniverse.nvidia.com/kit/docs/kit-sdk/105.0.2/index.html><br><https://docs.omniverse.nvidia.com/kit/docs/point-cloud-import/latest/build_tools.html>（Omniverse基于Kit开发的编译工具）<br>
> - Omniverse Connect（用于连接Omniverse平台和其他的应用程序）：<https://docs.omniverse.nvidia.com/connect/latest/index.html><br>

4. Nvidia Omniverse Foundation Applications官方文档
> Omniverse Isaac Sim（该网址包含了所有Isaac Sim仿真的相关基础文档）：<https://docs.omniverse.nvidia.com/isaacsim/latest/index.html><br>
> Omniverse Code（Omniverse的开发环境IDE）：<https://docs.omniverse.nvidia.com/code/latest/index.html><br>
> Omniverse USDView（用于查看Omniverse场景内容）：<https://docs.omniverse.nvidia.com/usdview/latest/index.html><br>
> Omniverse USD Composer（用于组装、渲染、仿真大型的场景内容）：<https://docs.omniverse.nvidia.com/composer/latest/index.html><br>
> Omniverse Streaming Client（用于远程连接部署在远端网络上的Omniverse应用程序）：<https://docs.omniverse.nvidia.com/streaming-client/latest/index.html><br>
> Omniverse Farm（用于灵活部署和后台运行在服务器或者云上的工作流）：<https://docs.omniverse.nvidia.com/farm/latest/index.html><br>

5. Nvidia Omniverse Dev官方文档
> Omniverse Developer Guide（该网址包含了Omniverse Dev的开发者文档）：<https://docs.omniverse.nvidia.com/dev-guide/latest/index.html><br>
> Omniverse Workflows（Omniverse平台的工作流介绍文档）：<https://docs.omniverse.nvidia.com/workflows/latest/index.html><br>
> Omniverse Utilities（实用程序以增强Omniverse的使用功能，如Cache，Drive）：<https://docs.omniverse.nvidia.com/utilities/latest/index.html><br>
> Omniverse Materials and Rendering（Omniverse场景内容的材质和渲染配置）：<https://docs.omniverse.nvidia.com/materials-and-rendering/latest/index.html><br>
> Omniverse Services（基于Kit及内置扩展用来构建微服务，并可部署在本地、服务器及云上）：<https://docs.omniverse.nvidia.com/services/latest/index.html><br><https://www.nvidia.com/en-us/on-demand/session/omniverse2020-om1248/>（深入研究微服务专题介绍）<br><https://www.nvidia.com/en-us/on-demand/session/gtcspring21-s32071/> (为Omniverse构建微服务，可见附件中的PDF文档1)<br><https://www.nvidia.com/en-us/on-demand/session/gtcfall21-a31204/>（深入使用Omniverse构建微服务，可见附件中的PDF文档2）<br><https://github.com/NVIDIA-Omniverse/deep-dive-into-microservices>（官方GitHub仓库）<br>
> Omniverse Digital Twins（用于构建数字孪生仓库的例程）：<https://docs.omniverse.nvidia.com/digital-twins/latest/index.html><br>

6. Appendix
> [Building Microservices For Omniverse](https://github.com/JadeCong/Resources/blob/master/Documents/Nvidia/S32071-JozefvanEenbergen-NicBranker-BuildingMicroservicesForOmniverse_1617757618199001vlUt.pdf)<br>
> [Deep-dive-into-building-microservices-with-Omniverse](https://github.com/JadeCong/Resources/blob/master/Documents/Nvidia/GTC2021-A31204-Deep-dive-into-building-microservices-with-Omniverse.pdf)<br>

#### 2.3 Nvidia Developer Center

1. Nvidia Developer官方主网址
> 该网址包含了所有开发者文档及资源（主要是面向各种软件的深度开发者的文档及资源）：<https://developer.nvidia.com/>

2. Nvidia Omniverse 开发者官网
> Omniverse 开发者官网（包括高阶教程及开发资源）：<https://developer.nvidia.com/omniverse>

3. Nvidia Isaac Sim开发者官网
> Isaac Sim开发者官网（包括本地、云端、机器学习方面的教程及资源）：<https://developer.nvidia.com/isaac-sim>

4. Nvidia Drive Sim开发者官网
> Nvidia Drive自动驾驶开发者官网（包括生态及多种周边资源）：<https://developer.nvidia.com/drive><br>
> Drive Sim开发者官网：<https://developer.nvidia.com/drive/simulation>

5. Nvidia OpenUSD开发者官网
> USD开发者官网：<https://developer.nvidia.com/usd><br>
> OpenUSD开发者官网：<https://developer.nvidia.com/usd/dev-program>

6. Nvidia PhysX开发者官网
> PhysX开发者官网（包括PhysX、Blast、Flow引擎）：<https://developer.nvidia.com/physx-sdk>

7. Nvidia Omniverse Code开发者官网
> Omniverse Code开发者官网（用于Omniverse开发的IDE）：<https://developer.nvidia.com/omniverse/code-app>

8. Nvidia Omniverse Replicator开发者官网
> Omniverse Replicator开发者官网（SDG合成数据生成用于加速计算机视觉相关网络训练）：<https://developer.nvidia.com/omniverse/replicator>

9. Nvidia Quantum Computing开发者官网
> Quantum Computing开发者官网（混合量子计算开发）：<https://developer.nvidia.com/cuda-quantum>

10. Nvidia Other Platforms
> NVIDIA Riva开发者官网（语音和翻译AI开发）：<https://developer.nvidia.com/riva><br>
> NVIDIA Maxine开发者官网（增强语音、视频及增强现实的开发）：<https://developer.nvidia.com/maxine><br>
> NVIDIA Merlin开发者官网（大规模推荐系统的开发）：<https://developer.nvidia.com/merlin><br>
> NVIDIA TAO Toolkit开发者官网（网络大规模训练及优化部署的开发）：<https://developer.nvidia.com/tao-toolkit><br>

#### 2.4 Nvidia Training Center

1. Nvidia Training官网主网址
> 该网址为Nvidia培训中心的主网址（EN）：<https://www.nvidia.com/en-us/training/><br>
> 该网址为Nvidia培训中心的主网址（CN）：<https://www.nvidia.cn/training/><br>

2. Nvidia Self-Paced Training
> 该网址为Nvidia自学培训教程（学习路径见如下PDF附件）：<https://www.nvidia.com/en-us/training/online/>

3. Nvidia Instructor-Led Workshops
> 该网址为Nvidia讲师指导的研讨会：<https://www.nvidia.com/en-us/training/instructor-led-workshops/>

4. Nvidia Educator Programs
> 该网址为Nvidia教育开发项目：<https://www.nvidia.com/en-us/training/educator-programs/>

5. Nvidia Enterprise Solutions
> 该网址为Nvidia企业级解决方案案例：<https://www.nvidia.com/en-us/training/enterprise-solutions/>

6. Nvidia Technical Resources
> 该网址为Nvidia技术支持的相关资源：<https://www.nvidia.com/en-us/training/resources/>

7. Appendix
> [nvidia-learning-learning-path-developers-it-administrators](https://github.com/JadeCong/Resources/blob/master/Documents/Nvidia/nvidia-learning-learning-path-developers-it-administrators.pdf)

#### 2.5 Nvidia Downloads Center

1. Nvidia Downloads官网主网址
> 该网址为Nvidia资源（镜像、模型、应用等）下载中心的主网址：<https://developer.nvidia.com/downloads>

2. Nvidia NGC Catalog网址
> NGC Catalog网址（NGC（NVIDIA GPU CLOUD）是NVIDIA开发的一套深度学习生态系统，可以使开发者免费访问深度学习软件堆栈，建立适合深度学习的开发环境。目前NGC在阿里云gn5实例作了全面部署，并且在镜像市场提供了针对NVIDIA Pascal GPU优化的NGC容器镜像。）：<https://catalog.ngc.nvidia.com/?filters=&orderBy=weightPopularDESC&query=>

3. Nvidia GPU Driver Docker镜像
> GPU Driver Docker镜像（用于配置Nvidia显卡驱动）：<https://catalog.ngc.nvidia.com/orgs/nvidia/containers/driver>

4. Nvidia Omniverse Isaac Sim Docker镜像
> Isaac Sim Docker镜像（用于Headless模式运行）：<https://catalog.ngc.nvidia.com/orgs/nvidia/containers/isaac-sim>

5. Nvidia GPT Model
> GPT Model：<https://catalog.ngc.nvidia.com/orgs/nvidia/teams/nemo/models/megatron_gpt_345m>

6. Nvidia Llama 2 Model
> Llama 2 Model：<https://catalog.ngc.nvidia.com/orgs/nvidia/teams/playground/models/llama2>

7. Nvidia TAO Conversational AI Collection
> TAO Conversational AI Collection（用于对话AI的大规模预训练及部署）：<https://catalog.ngc.nvidia.com/orgs/nvidia/teams/tao/collections/tao_conversationalai>

8. Nvidia TAO Computer Vision Collection
> TAO Computer Vision Collection（用于计算机视觉领域的大规模预训练及部署）：<https://catalog.ngc.nvidia.com/orgs/nvidia/teams/tao/collections/tao_computervision>

#### 2.6 Nvidia Forums Center

1. Nvidia Forums官网主网址
> 该网址为Nvidia论坛官网（用于同其他开发者交流问题及咨询官方技术问题）的主网址：<https://forums.developer.nvidia.com/>

2. Nvidia Omniverse论坛板块
> Omniverse论坛板块： <https://forums.developer.nvidia.com/c/omniverse/300>

3. Nvidia Physics Simulation论坛板块
> Physics Simulation论坛板块：<https://forums.developer.nvidia.com/c/physics-simulation/442>

4. Nvidia AI & Data Science论坛板块
> AI & Data Science论坛板块：<https://forums.developer.nvidia.com/c/ai-data-science/86>

5. Nvidia Autonomous Machines论坛板块
> Autonomous Machines论坛板块（机器人）：<https://forums.developer.nvidia.com/c/agx-autonomous-machines/55>

6. Nvidia Autonomous Vehicles论坛板块
> Autonomous Vehicles论坛板块（自动驾驶）：<https://forums.developer.nvidia.com/c/autonomous-vehicles/517>

7. Nvidia Developer Tools论坛板块
> Developer Tools论坛板块：<https://forums.developer.nvidia.com/c/developer-tools/106>

#### 2.7 Nvidia Blogs Center

1. Nvidia Blog官网主网址：
> 该网址为Nvidia博客官网（用于查看Nvidia最新的技术及产品动态）的主网址：<https://developer.nvidia.com/blog/>

2. Nvidia Simulation-Modeling-Design Blog板块
> Simulation-Modeling-Design Blog板块：<https://developer.nvidia.com/blog/category/simulation-modeling-design/>

3. Nvidia Robotics Blog板块
> Robotics Blog板块：<https://developer.nvidia.com/blog/category/robotics/>

4. Nvidia Data Science Blog板块
> Data Science Blog板块：<https://developer.nvidia.com/blog/category/data-science/>

5. Nvidia Conversational AI Blog板块
> Conversational AI Blog板块：<https://developer.nvidia.com/blog/category/conversational-ai/>

6. Nvidia Cloud Blog板块
> Cloud Blog板块：<https://developer.nvidia.com/blog/category/data-center-cloud/>

#### 2.8 Unofficial Reference Resources

1. Isaac Sim公开课教程
> Isaac Sim B站教程：<https://www.bilibili.com/video/BV1EN4y1w7D5/?spm_id_from=333.337.search-card.all.click>

2. Premake编译C++配置教程
> Premake编译C++配置教程：<https://premake.github.io/docs/>

3. Packman编译工具教程
> Packman编译工具教程：<https://packman.readthedocs.io/en/latest/>

4. Python Bindings(从Python调用C/C++)教程
> Python Bindings教程：<br>
> <https://realpython.com/python-bindings-overview/><br>
> <https://zhuanlan.zhihu.com/p/143356193><br>

### 3. Industrial Metaverse Platform

#### 3.1 物理引擎

> 物理引擎，简单的说就是计算2D或者3D场景中，物体与场景之间，物体与角色之间、物体与物体之间的运动交互和动力学。物理引擎是一个计算机程序用来模拟牛顿动力学模型，使用质量、速度、摩擦力和空气阻力等变量，为刚性或柔性物体赋予真实的物理属性的方式来模拟物体的运动、旋转和碰撞等交互过程，使得仿真的效果更准确、更真实。物理引擎的基础是系统动力学，动力学是对现实世界中物体运动规律的数学描述，这种数学描述主要是基于常微分方程的，物理引擎核心的任务就在于求解常微分方程。
>
> 基于牛顿三大定律，在计算机中通过物理引擎来模拟刚体运动的流程大致都是如下左图所示。其中显示结果这部分中，物理引擎驱动图形渲染的流程如下右图所示。<br>
> ![Physic_Engine_1](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Physic_Engine_1.PNG)<br>
> ![Physic_Engine_2](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Physic_Engine_2.PNG)<br>
>
> 物理引擎有两种类型常见的型类：实时物理引擎和高精度物理引擎。高精度的物理引擎需要更多的处理能力来计算非常精确的物理，通常使用在科学研究（计算物理学）和电脑动画电影制作。实时物理引擎使用通常使用在电子游戏并且简化运算，降低精确度增以减少计算时间，得到在电子游戏当中可以接受的的处理速度。
>
> 目前的物理引擎有Havok，PhysX，Bullet，ODE，Newton，Vortex，MuJoCo，DART等。但是从开源程度，功能完善性，对柔性体、粒子系统的模拟仿真，计算实时性等方面，PhysX和Bullet有比较优势，且Unreal  Engine 4/5 都使用PhysX/Chaos（PhysX的替代方案）作为底层运行的物理引擎。
>
> **Goal：** 工业元宇宙平台能够配置选择多种物理引擎，多种求解器，以适应不同的仿真精度和仿真速度的要求。<br>
> **Reference：** https://github.com/JadeCong/Awesome-Robot-Learning

#### 3.2 仿真平台

> 通过调研发现现在从学术界到工业界呈现出不同的定位需求，学术界主要考虑仿真平台的轻量化、易用性及低成本开发需求，代表的仿真平台有ROS/ROS2，Robosuite，RaiSim，CoppeliaSim，Gazebo等；工业界主要考虑仿真平台的通用性、拓展性、大规模及实时性的需求，代表的仿真平台有Nvidia Omniverse，CARLA，ROS2等。根据我们构建工业元宇宙平台的需求（通用性，拓展性及规模化），通过全面对比，我们初步选定仿真平台如下：Nvidia Omniverse，CARLA，Robosuite这三个仿真平台，通过详细深入使用，最后确定最终的工业元宇宙平台。
>
> **Goal：** 通过对通用性、兼容性，用户友好性，开发难度等多方面对比，最终确定适合构建工业元宇宙的仿真平台。<br>
> **Reference：** https://github.com/JadeCong/Awesome-Robot-Learning
>
> ##### （1）Nvidia Omniverse
>
> NVIDIA Omniverse是一款基于PhysX为物理引擎，Pixar的USD为模型描述文件开发的一个仿真平台，其作用类似一个中间件，连接物理渲染引擎和各大终端应用，因此其具备强大的拓展性，同时NVIDIA为其开发了多种插件和应用场景资源，并配合其GPU硬件设备做了诸多优化。因此，NVIDIA Omniverse作为我们工业元宇宙平台的首选。
>
> **Reference：**<br>
（1）https://docs.omniverse.nvidia.com/<br>
（2）https://docs.omniverse.nvidia.com/app_isaacsim/app_isaacsim/overview.html<br>
（3）https://docs.omniverse.nvidia.com/kit/docs/kit-extension-template-cpp/latest/index.html
>
> ##### （2）CARLA
>
> CARLA是一款开源软件，其基于Chrono（一种开源的、多物理仿真引擎，可使用基于模板的方法提供高逼真度的车辆动力学仿真）为物理引擎，Unreal Engine作为渲染引擎，由于其开源并具有大量的自动驾驶场景的模型实例，同时Unreal Eninge能高速渲染出更真实的数据，开放出C++和Python接口便于拓展开发。因此，CARLA可作为工业元宇宙平台的次选。
>
> **Reference：**<br>
（1）https://carla.org/<br>
（2）https://github.com/carla-simulator/carla<br>
（3）https://carla.readthedocs.io/en/latest/
>
> ##### （3）Robosuite
>
> Robosuite是一款开源软件，其基于MuJoCo（一种通用的多关节的接触碰撞物理引擎，其应用在机器人、生物力学、动画仿真、机器学习等多领域）作为物理引擎，引擎具有高精度、轻量化、实时性好等特点，其采用MJCF（一种类似xml的可读性文件）作为模型描述文件，能够实现对多对象、柔性体等进行交互仿真，并能实现高质量的渲染，另外Robosuite在MuJoCo引擎采用C/C++的基础上开放出Python接口，便于拓展开发。因此，Robosuite可作为工业元宇宙平台的备选。
>
> **Reference：**<br>
（1）https://robosuite.ai/<br>
（2）https://mujoco.org/
>
> ##### （4）仿真平台搭建
>
> 1. 系统环境构建
>>
>> 首先，在构建仿真平台之前，我们需要统一系统开发环境，上述三款仿真平台均支持Ubuntu和Windows两种系统，但NVIDIA Omniverse(https://docs.omniverse.nvidia.com/app_isaacsim/app_isaacsim/requirements.html)对操作系统提出一定要求，同时考虑到后期与其他软件的配合开发的拓展性以及用于机器学习的场景，我们暂时统一系统环境为Ubuntu 22.04/20.04 LTS，另外系统主机要满足上面链接中的物理硬件要求，然后通过官方系统镜像进行安装系统即可。
>>
>> **Reference：** [Windows and Ubuntu Installation.md](https://gist.github.com/JadeCong/a5c09386a8ea30881540996498ed54b1#file-windows-and-ubuntu-installation-md)
>
> 2. 仿真平台的安装与配置
>>
>>- **Nvidia Omniverse**<br>
>> 在安装好Ubuntu操作系统之后，依据Omniverse官方安装文档(https://docs.omniverse.nvidia.com/app_isaacsim/app_isaacsim/install_workstation.html)进行安装软件即可。如遇到问题，可参考下面参考链接进行重新安装配置驱动和软件启动选项配置。
>>
>> **Reference：**
>> (1) [Ubuntu Nvidia Configuration.md](https://gist.github.com/JadeCong/a5c09386a8ea30881540996498ed54b1#file-ubuntu-nvidia-configuration-md)
>> (2) [Ubuntu Nvidia Omniverse.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-ubuntu-nvidia-omniverse-md)
>>
>>- **CARLA**<br>
>> 在安装好Ubuntu操作系统之后，依据CARLA官方安装文档(https://carla.readthedocs.io/en/latest/start_quickstart/)进行安装软件即可。如遇到问题，可参考下面参考链接进行配置软件依赖。
>>
>> **Reference：**[Ubuntu CARLA Simulator.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-ubuntu-carla-simulator-md)
>>
>>- **Robosuite**<br>
>> 在安装好Ubuntu操作系统之后，依据Robosuite官方安装文档(https://robosuite.ai/docs/installation.html)进行安装软件即可。

#### 3.3 建模方法

> 在工业生产的流程中，需要对不同的对象进行数字化建模，那么可以对建模进行分层管理：基于对象，基于场景，基于工作流；然后提供高效的、柔性的、个性化的自动化建模方法，从而让用户更便捷地实现生产场景的构建。本节内容主要是基于NVIDIA Omniverse仿真平台进行开发建模，CARLA及Robosuite仿真平台后续进行扩展补充。
>
> **Reference：** [Ubuntu Nvidia Omniverse.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-ubuntu-nvidia-omniverse-md)
>
> ##### （1）基于对象建模
>
> 1. Master模型
> 2. 控制器模型
> 3. 被控对象模型
> 4. 环境模型
>
> ##### （2）模型库
>
> 对不同的对象内容进行多标签（基于功能/场景等）分类管理，从而形成一个庞大的对象模型库，以便提供给用户选择使用。
>
>- DD马达模型<br>
> **Goal：** (1)构建现实模型；(2)能够实现物理属性(惯量、摩擦、力矩输出、负载曲线)；(3)电机原理模拟(交流永磁同步直驱电机)<br>
> **Reference：** [Ubuntu Nvidia Omniverse.md](https://gist.github.com/JadeCong/215157de3c6f25f2277caae8fa50c947#file-ubuntu-nvidia-omniverse-md)
>>
>> 1. 构建现实模型：<br>
>> 2. 实现物理属性：<br>
>> 3. 基本原理模拟：<br>
>
> ##### （3）基于场景建模
>
> 针对典型的工业生产场景构建几个场景模型示例，并形成完整的建模流程及教程文档、Demo，以便用户进行学习参考。
>
> 1. 场景分析
> 2. 场景配置
> 3. 场景合成
>
> ##### （4）场景库
>
> 通过对不同场景的理解，构建多种典型的用户应用场景的模型形成模型库，以便用户能快速构建基础场景并进行个性化修改以满足场景构建需求。
>
>- 工业柔性产线场景模型
>- 飞机制造产线场景模型
>- 自动驾驶城市场景模型
>
> ##### （5）基于工作流建模
>
> 在更大的生产场景中，不同的工作及生产阶段对场景的构建也不同，需要通过组合的方式来完成对整个生产的流程化建模，因此平台需要能够实现对不同场景的融合和链接，从而完成对某一工作场景的全生命周期的高效建模。
>
> **Goal：** 工业元宇宙平台能够根据用户需求层次对用户场景进行高效的精准的自动化建模。<br>
> **Reference：** https://zhuanlan.zhihu.com/p/606321816

#### 3.4 数据流接口

> 在工业元宇宙平台上，任何某一场景、流程的仿真运行，本质上都是各种各样的数据在平台上抽象的网络节点间进行流动。因此，在复杂的工作场景中，需要对各个网络节点间数据流的格式进行规范和统一，能够实现对不同场景，不同对象的适应性。

#### 3.5 平台数字化管理

> 在工业元宇宙平台上，我们通过不同场景建模和仿真，会产生大量的有用数据，这些数据会指导或直接参与生产流程，因此需要对这些数据（模型、场景、工作流）进行管理。通过构建数字化管理系统，基于不同级别，不同权限等来对生产流程中的数据进行管理。
>
> ##### （1）Omniverse微服务架构简介
>
> Nvidia Omniverse Microservices有如下特点：<br>
>（1）模块化，易组合；<br>
>（2）容易构建，本地使用；<br>
>（3）能够大规模运行；<br>
>（4）能够实现用例的大量变种；<br>
>
> Nvidia Omniverse Microservices平台的架构如下：<br>
> ![Omniverse_Microservices](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Omniverse_Microservices.png)<br>
>
> Nvidia Omniverse Microservices平台有如下名词：<br>
>（1）Routers：节点管理器，用于管理微服务注册<br>
>（2）Facilities：基础设施，如数据库管理，衡量指标，安全授权，进度管理<br>
>（3）Endpoints：端点为服务在网络中的节点<br>
>（4）Transports：微服务核心与客户端之间的通讯方式<br>
>（5）Metrics：衡量指标<br>
>（6）Clients：同微服务通讯访问的客户端<br>
>（7）OpenAPI：将微服务封装后给应用来调用<br>
>（8）Apps：大型应用集合了多种微服务，如Farm Agent，Farm Queue<br>
> 
> ##### （2）仿真平台的微服务架构设计
>
> 当前，随着社会活动和企业业务的增加，主流的商业实体都会构建自己的云平台（公有云/私有云），云服务也成为支撑公司的庞大的研发和运营的基础。为面向企业的应用场景和业务，云服务衍生出多种形态XaaS，其表示针对任何...aaS的解决方案。目前，比较常用的流行的云服务有：<br>
> IaaS(Infrastructure as a Service)：基础架构即服务，用于构建云平台的基础设施，如云端虚拟机；<br>
> PaaS(Platform as a Service)：平台即服务，用于构建云平台而提供的托管环境；<br>
> CaaS(Container as a Service)：容器即服务，用于解决平台虚拟化的缺点问题；<br>
> SaaS(Software as a Service)：软件即服务，用于托管运行维护自己的应用程序；<br>
> FaaS(Function as a Service)：功能即服务，用于基于事件的结构化服务；<br>
> DaaS(Data as a Service)：数据即服务，用于获取和返回大量的数据；<br>
> DBaaS(Database as a Service)：数据库即服务，用于存储即管理大量的数据；<br>
> LaaS(License as a Service)：许可即服务，用于软件的安全性、加密、授权和许可。<br>
>
> **Reference：**<br>
> <https://brainhub.eu/library/cloud-architecture-saas-faas-xaas><br>
> <https://medium.com/geekculture/the-comprehensive-concept-of-iaas-paas-saas-aaas-baas-faas-daas-staas-caas-naas-dbaas-14145d4f93c4><br>
> <https://zhuanlan.zhihu.com/p/422940645><br>
>
> 当前，Omniverse平台的服务化是基于Kit开发的一套微服务架构，用户可通过Service Extension开发自己的服务组件，从而构建自己的应用场景平台，然后可以将平台部署在云端或者本地服务器上以供公司成员和客户进行使用，同时研发人员可更新服务组件以实现升级服务功能。基于上述拟定的功能模块，我们可用到的云服务有IaaS、PaaS、SaaS、FaaS、DaaS、DBaaS、LaaS，然后基于Omniverse微服务架构的服务化功能模块如下图所示。<br>
> 
> ![Intelligent_Testing_Platform](https://github.com/JadeCong/Resources/blob/master/Pictures/Doc_Images/Gist/Intelligent_Testing_Platform.png)<br>
>
> 根据公司智能测试平台的要求及具体的测试业务，初步拟定以下可服务化的功能模块，包括：快速3D对象建模、模型USD格式转换、构建加载工作场景、按要求运行测试仿真、输出并记录测试仿真结果、仿真结果数据库管理、测试用例配置数据库管理、USD模型数据库管理、面向研发管理系统、面向客户管理系统等。
>
> 云服务内容说明：基于智能测试平台，能够快速搭建客户应用场景下的虚拟测试环境，虚拟部件，并提供定制化的系统测试服务。
>
> 1. 测试用例<br>
>    a. 知识服务，提供测试用例、测试标准推荐，专业知识推荐；辅助客户编写测试用例<br>
>    b. 生成测试用例服务<br>
>    c. 系统可靠性模型评估与诊断，缺陷风险评估服务<br>
> 2. 测试环境<br>
>    a. 建模服务，被测对象快速虚拟化到OV平台<br>
>        (1) 正向建模<br>
>        (2) 自动建模<br>
>    b. 测试环境搭建服务，快速利用矢量部件库，搭建测试环境<br>
>        (1) 测试环境推荐<br>
>    c. 生成混合测试环境，辅助扩展用例范围<br>
>        (1) 混合场景基于规则随机<br>
>        (2) 用户自定义规则<br>
> 3. 测试运营<br>
>    a. 测试用例版本管理服务<br>
>    b. 测试用例自动回归测试，CICD接口服务<br>
>    c. 测试结果输出报表，自定义报表服务<br>
>
> ##### （3）仿真平台的微服务模块实现
>
> ##### （4）交互式仿真接口实现

## Digital Twin
Digital Twin Docs.

### Basic Principles
### Methods and Algorithms
### Applications

Continue reading [X-Technologies](X-Technologies.md){:.heading.flip-title}
{:.read-more}
