---
layout: welcome
title: GitHub Pages of Jingde (Jade) Cong
description: >
  Official GitHub Pages for Jade Cong where you can know more about me.
# logo:
# theme_color:
# accent_color:
accent_image:
  background: url('/assets/images/home/sidebar-home.jpg') center/cover
  overlay: true
image:
  path: /assets/images/home/home-cover.png
#   srcset:
#     1024w:
#     512w:
#     256w:

permalink: /contents/home/
# show_collection: projects
selected_projects:
  - _projects/Tactile-Finger.md
  - _projects/Robot-Teleoperation.md
  - _projects/Industrial-Metaverse-Platform.md
  - _projects/Robotic-Softbody-Manipulation.md
projects_page: /contents/projects/
selected_posts:
  - contents/blogs/_posts/2025-01-06-New-Ideas-for-Achieving-AGI.md
  - contents/blogs/_posts/2024-12-14-In-Deep-Reflections-on-Humanoid-Robot-and-AI.md
  - contents/blogs/_posts/2019-08-09-Whats-AGI.md
  - contents/blogs/_posts/2019-08-02-Goal-of-AGI.md
posts_page: /contents/blogs/
# related_posts:
# redirect_from:
# excerpt_separator:
last_modified_at: 2025-09-11

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
comments: false
featured: false
---

- Table of Contents
{:toc}

This site is my GitHub Pages where you can know more about me from the categories as follows: **[Researches](/contents/researches)**, **[Publications](/contents/publications/)**, **[Projects](/contents/projects/)**, **[Blogs](/contents/blogs/)**, **[Talks](/contents/talks/)**, **[Podcasts](/contents/podcasts/)**, **[Documentations](/contents/documentations/)**, **[Resources](/contents/resources/)**, **[Resume](/contents/resume/)** and **[About](/contents/about/)**.

![Home Cover](/assets/images/home/home-cover.png){:.lead width="1920" height="1080" loading="lazy"}
The home cover of Jade's GitHub Pages
{:.figcaption}

# Fascinating Projects

The newest and fascinating projects will be published promptly here.
<!--projects-->

# Amazing Posts

The newest and amazing posts will be published promptly here.
<!--posts-->

# Contact With Me

The most direct way to stay in touch with me is via [Email](mailto:jade.cong@qq.com) as follows, then [LinkedIn](https://www.linkedin.com/in/jade-cong), [Twitter](https://twitter.com/JadeCong26), [Reddit](https://www.reddit.com/user/JadeCong), [GitHub](https://github.com/JadeCong), [Hugging Face](https://huggingface.co/JadeCong), [ZhiHu](https://www.zhihu.com/people/Jade_Cong) or [WeChat Public](/assets/images/home/wechat-public.jpg).
{% include pro/newsletter.html %}

<!-- buymeacoffee -->
<script data-name="BMC-Widget" data-cfasync="false" src="https://cdnjs.buymeacoffee.com/1.0.0/widget.prod.min.js" data-id="jadecong" data-description="Support me on Buy me a coffee!" data-message="THANK YOU for visiting!!! I love COFFEE, so totally up for ONE!" data-color="#5F7FFF" data-position="Right" data-x_margin="18" data-y_margin="18"></script>

<!-- wechat, alipay and bitcoin sponsor -->
<script src="assets/js/tctip/dist/tctip-1.0.3.min.js"></script>
<script>
  new tctip({
    top: '54%',
    button: {
      id: 7,
      type: 'zanzhu',
    },
    list: [
      {
        type: 'wechat',
        qrImg: './assets/images/home/wechat-sponsor.jpeg',
        desc: 'WeChat Sponsor'
      },
      {
        type: 'alipay',
        qrImg: './assets/images/home/alipay-sponsor.jpeg',
        desc: 'Alipay Sponsor'
      },
      {
        type: 'bitcoin',
        qrImg: './assets/images/home/bitcoin-sponsor.png',
        desc: 'Bitcoin Sponsor'
      }
    ],
    stat: false
  }).init()
</script>

<!-- dynamic interactive earth -->
<!-- <script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5/dist/echarts.min.js"></script>
<script type="text/javascript" src="https://echarts.apache.org/zh/js/vendors/echarts-gl/dist/echarts-gl.min.js"></script>
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5/dist/extension/dataTool.min.js"></script>
<script type="text/javascript" src="https://echarts.apache.org/zh/js/vendors/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript" src="https://echarts.apache.org/zh/js/vendors/echarts-stat/dist/ecStat.min.js"></script>
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@4.9.0/map/js/world.js"></script>
<script type="text/javascript" src="https://api.map.baidu.com/api?v=3.0&ak=RjyYGkNlTImU7ioD7j3Iymq4CqBgQwO8"></script>
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5/dist/extension/bmap.min.js"></script> -->
<script type="text/javascript" src="assets/js/echarts/dist/echarts.min.js"></script>
<script type="text/javascript" src="assets/js/echarts-gl/dist/echarts-gl.min.js"></script>
<div id="container" style="width:100vh; height:50vh; margin:0 auto; display:flex; align-items:center; justify-content:center;"></div>
<script type="text/javascript">
  var dom = document.getElementById('container');
  var myChart = echarts.init(dom, null, {
    renderer: 'canvas',
    useDirtyRect: false
  });
  var app = {};
  var ROOT_PATH = 'assets/images/home/';
  var option;
  
  option = {
    backgroundColor: '#000',
    globe: {
      baseTexture: ROOT_PATH + 'world.topo.bathy.200401.jpg',
      heightTexture: ROOT_PATH + 'world.topo.bathy.200401.jpg',
      displacementScale: 0.04,
      shading: 'realistic',
      environment: ROOT_PATH + 'starfield.jpg',
      realisticMaterial: {
        roughness: 0.9
      },
      postEffect: {
        enable: true
      },
      light: {
        main: {
          intensity: 5,
          shadow: true
        },
        ambientCubemap: {
          texture: ROOT_PATH + 'pisa.hdr',
          diffuseIntensity: 0.2
        }
      }
    }
  };
  
  if (option && typeof option === 'object') {
    myChart.setOption(option);
  }
  
  window.addEventListener('resize', myChart.resize);
</script>
