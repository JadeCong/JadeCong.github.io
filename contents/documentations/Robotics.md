---
layout: page
title: Robotics
description: >
  Docs for robotics.
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

Based on classical robotics, we construct a robot form these steps as follows: **Robot Mechanics**, **Robot Calibration**, **Robot Planning** and **Robot Control**. So I created the docs from the steps and focused on the basic principles, methods, algorithms and applications in the above categories. 

**JadeCong(GitHub):** [Awesome-Robotics](https://github.com/JadeCong/Awesome-Robotics)
{:.note}

## Robot Mechanics

### (1) Collaborative Robot

### (2) Legged Robot

### (3) Mechanical Hand

### (4) Humanoid Robot

### (5) Soft Robot

### (6) Tactile Sensor

## Robot Calibration

### (1) Basic Principles

### (2) Methods and Algorithms

### (3) Applications

## Robot Planning

### (1) Collision Avoidance

- Vision-Based Collision Avoidance

### (2) Motion Planning

- A Star
- RRT(Rapidly Exploring Random Tree)
- RRT-Connect
- Vision-Servo Realtime Planning

### (3) Task Manipulation

1. Hand Grasp Dexterous Manipulation
- soft robotics

2. Hand Grasp Future Direction
- 更好地理解不确定性
- 更多地利用接触
- 更灵巧地设计
- 更稳定的传感器

3. Hand Grasp Methods & Skills
- (1) Transfer Learning
> 1. Domain Adaptation
>> 解决训练集和测试集数据分布不同的问题，从而能够实现在源域和目标域之间的自适应，进而实现少样本学习（Few/One-Shot Learning）。

- (2) Imitation Learning
> 1. GAN for Imitation Learning
>> 通过GAN网络去预测专家数据的分布，从而最小化真实数据分布和预测分布之间的差异，进而完成对agent的学习。

- (3) Meta Learning
> 1. Model Agnostic Meta Learning Framework
>> 通过MAML框架能够避免强化学习的弊端，从而能够实现少样本的迁移学习，从而快速完成目标任务的学习。

- (4) Reinforcement Learning
> 1. Policy Gradients
>> 通过Policy Gradients的策略学习，从而实现对连续动作的预测，进而完成相关的目标任务。
> 2. DDPG
>> 通过更深层次的网络学习，从而加速学习过程，并且学到知识。
> 3. A3C
>> 通过分布式并行训练，从而加速网络训练过程。

- (5) Deep Learning
> 1. GAN
>> 通过对抗生成网络GAN生成更多的异构分布的训练集数据，从而能够减轻收集真实数据大量的繁琐工作，同时能够到达用于测试的效果。
> 2. LSTM
>> 通过LSTM时间序列记忆，从而能够实现对过往的经验进行学习，并且能够理解上下文之间的联系。
> 3. CNN
>> 通过CNN对未知的数据进行估计，从而减轻对标签数据的依赖。

## Robot Control

### (1) Position Control

- Trajectory Tracking

### (2) Velocity Control

- PD Control
- PID Control
- 梯形曲线
- S形曲线
- 多项式曲线（3/5次）

### (3) Force Control

- Active Control
  - Impedance Control
  - Dynamic-Model Control
- Passive Control
	- Structure Setting

### (4) Hybrid Position-Force Control

- Active Control
	- Configure Space Control
- Passive Control

### (5) Compliance Control

Continue reading [AIRobotics](AIRobotics.md){:.heading.flip-title}
{:.read-more}
