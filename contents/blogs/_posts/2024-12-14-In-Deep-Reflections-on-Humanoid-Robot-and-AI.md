---
layout: post
title: In Deep Reflections on Humanoid Robot and AI
caption: Deep dive into Humanoid Robot and AI
description: >
  This post shows the deep reflections of author on Humanoid Robot and AI so far.
# logo:
# theme_color:
# accent_color:
accent_image:
  background: url('/assets/images/blogs/sidebar-blogs.jpg') center/cover
  overlay: true
image:
  path: /assets/images/blogs/agi-cover.jpeg
#   srcset:
#     1024w:
#     512w:
#     256w:
links:
  - title: AdvancedRobotics(WeChat Public)
    url: https://mp.weixin.qq.com/s?__biz=MzI4MTQ4NjM1Mg==&mid=2247483728&idx=1&sn=4c99e4bd3e31c27c9c68801c48f08a3d&chksm=eba9342fdcdebd39bd26266f6cb5026adc3e8262e857bb13ca3b107937e3497f7ef6d11adb32&token=775171262&lang=zh_CN#rd
categories: [blogs]
tags:
date: 14 December 2024

# permalink: /contents/blogs/
# show_collection: blogs
# selected_projects:
# projects_page:
# selected_posts:
# posts_page:
# related_posts:
# redirect_from:
# excerpt_separator:
last_modified_at: 2024-12-14

hide_description: false
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

**AdvancedRobotics(WeChat Public):** [In Deep Reflections on Humanoid Robot and AI](https://mp.weixin.qq.com/s?__biz=MzI4MTQ4NjM1Mg==&mid=2247483728&idx=1&sn=4c99e4bd3e31c27c9c68801c48f08a3d&chksm=eba9342fdcdebd39bd26266f6cb5026adc3e8262e857bb13ca3b107937e3497f7ef6d11adb32&token=775171262&lang=zh_CN#rd)
{:.note}

在2022年Tesla AI Day上，特斯拉发布了人形机器人Optimus，自此拉开了人形机器人的大幕。这两年间，机器人、具身智能、大模型、多模态模型各种技术概念相继轮番登场，发展火热澎湃，已经进入全民AI时代。两年后，AI和机器人也逐渐进入理性的冷静期，至此，我们也该对当前的方向和技术进行谨慎深入的思考。下面是我对于人形机器人和AI深入思考的Q&A～


Q1.训练人形机器人模型的数据来源？

A1.一般训练模型的数据来源于真实数据、仿真数据以及合成数据。目前训练人形机器人模型的数据主要来自于仿真数据，但由于数据分布的不同，必须要有真实数据来进行修正优化。随着互联网上数据被大模型基本上使用消耗殆尽，因此合成数据也成为一种合理有效的手段。我们都知道，现在互联网上的所有数据是人类所有智慧结晶的子集，目前大模型的本质就是基于这些数据进行合乎常理的推测，是这部分数据所蕴含知识的上限。但是人类所有智慧能产生的信息远远大于互联网上这些数字化的信息，因此，如何对更多的人类智慧和知识更好的数字化或者其他形式的表征，才能更好地训练大模型，从而提高其智能水平。


Q2.如何对采样的交互数据进行表征？

A2.通过各种传感器进行采样的数据，本质上是对真实世界的实时状态进行了压缩保存，在这个过程中其实进行了降维处理而丢失了大部份信息，例如时间信息、与环境的耦合信息，世界状态的细节信息等。那么在训练AI的过程中，为了让其更加智能地理解整个世界，可以通过两种方式：第一种，就是直接将更高维的数据来训练AI，当然这里存在复杂的传感器设计与实现问题，李飞飞提出的空间智能就是机器人在三维空间中的感知、理解和交互能力，相比于二维的图像信息输入，这无疑将提高机器人的智能水平。第二种，通过传感器采样的数据相当于进行了压缩编码，我们能否基于传感器的原理对采样的数据进行逆向解码，从而最大程度上还原出物理世界的真实状态，当然不少信息是冗余干扰的，如果能还原出主要信息，那么同样用来训练AI，也可以大大提高其智能水平。


Q3.对于人形机器人，到底应该采用什么样的模型？

A3.自AI兴起发展以来，各种模型纷纷登场层出不穷，强化学习，模仿学习，迁移学习，元学习，持续学习等等。其实，说到底就是期望机器人能像人一样，能够持续地与环境进行动态交互，并理解环境和从环境中学习，在环境的动态和稳态之间平衡。那么人形机器人从仿生角度出发，也应该最大程度上去效仿人类，进行分层学习，模仿学习和持续学习。


Q4.如何实现人形机器人学习的泛化性？

A4.机器人必须对物理世界有一个基本的认识，可以称之为base model，这个模型应该包含人类发现总结的基础物理定律和基本常识。基于这个模型，机器人必须与真实物理世界进行交互，从而持续学习进化，并在现实中验证推理的合理性，从而更新这个base model。对于这个base model，可以被认为是所有AI的基础底座，基于此在不同场景下优化模型，并建立数据库记录这些不同场景之间的联系，于是模型在不同场景下都能有不错表现，从而具备泛化性。


Q5.人形机器人模型如何实现真正的可遗传，可共享，可迁移？

A5.首先，可以在仿真环境中通过分布式并行训练出一个基础模型，可以称之为离线学习。然后，将模型部署到机器人上让其与真实物理世界交互，在这个过程中不断更新基础模型，可以称之为在线学习。机器人在工作中采集数据，在线学习更新模型，当其待机不工作时继续在仿真环境中训练，离线学习更新模型，这样相互促进加快训练。然后定期阶段性地更新基础模型，把它放到一个数据库中进行共享，所有的机器都可以下载该模型，然后基于该模型在真实环境中交互学习从而更新模型，所有的人形机器人共同维护更新同一个基础模型，该模型就是所有机器人的大脑，它吸收融合了很多机器人与环境交互学习的经验，同时也可以共享，遗传，大大地缩短了训练时间，拓展了机器人泛化性。


Q6.如何理解和实现机器人的思考过程？

A6.对于机器人，在完成任务之前，需要有一个blueprint，然后针对任务进一步规划。通常要理解规则，规则来自物理世界的约束和任务规则的约束，然后能够拟合模仿以往的经验和数据，最后在这个经验的基础上自由发挥探索更多的可能性，这样其实机器人也是模拟了人的思考过程。


Q7.人类的睡眠和遗忘的作用和在模型中的作用？

A7.人类睡眠的作用是对白天的行为经历进行处理形成记忆，其本质上是在更新人大脑中的数据库和模型；人类的遗忘的作用是摆脱对现实世界的固化认知，从而能动态地变化地看待现实世界，并更好地生存进化。那么对于人形机器人模型而言，同样也要引入睡眠和遗忘机制，通过睡眠来优化更新模型参数，通过遗忘来对数据污染和错误经验进行稀释和修正，从而强化正确的、与真实世界匹配的规则和经验。


Q8.人形机器人的本体结构仍需要哪些改进？

A8.人体的脊椎和腰在人类身体保持灵活性和稳定性方面尤为重要，就目前来看，人形机器人本体结构在这两块没有很好的方案和产品。如果有不错的方案出来并进行应用，那么机器人的运动性能表现将会大大提升。
