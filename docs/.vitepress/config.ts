import { defineConfig } from 'vitepress'

export default defineConfig({
  base: '/ai-skills-guide/',
  title: 'Codex Skills 大全',
  description: '已验证的 Codex Skills 资源目录 - 按行业分类，含安装方式与使用示例',
  lang: 'zh-CN',
  lastUpdated: true,
  cleanUrls: true,
  head: [
    ['meta', { name: 'theme-color', content: '#0a0a0a' }],
  ],
  exclude: ['**/skills/**'],
  themeConfig: {
    siteTitle: 'Skills 大全',
    nav: [
      { text: '首页', link: '/' },
      { text: '快速开始', link: '/getting-started' },
      { text: '官方 Skills', link: '/official/' },
      { text: '插件生态', link: '/plugins/' },
      { text: 'Superpowers', link: '/superpowers/' },
      { text: '社区', link: '/community/' },
    ],
    sidebar: {
      '/official/': [
        {
          text: '官方 Curated Skills',
          items: [
            { text: '总览', link: '/official/' },
            { text: '开发与部署', link: '/official/development' },
            { text: '设计与前端', link: '/official/design' },
            { text: '项目管理', link: '/official/project-management' },
            { text: 'GitHub 与安全', link: '/official/github-security' },
            { text: '测试与浏览器', link: '/official/testing-browser' },
            { text: '文档与媒体', link: '/official/document-media' },
          ]
        }
      ],
      '/plugins/': [
        {
          text: '插件生态 Skills',
          items: [
            { text: '总览', link: '/plugins/' },
            { text: '浏览器与桌面控制', link: '/plugins/browser-control' },
            { text: '设计与视频', link: '/plugins/design-video' },
            { text: '文档处理', link: '/plugins/document-processing' },
          ]
        }
      ],
      '/superpowers/': [
        {
          text: 'Superpowers Skills',
          items: [
            { text: '总览', link: '/superpowers/' },
            { text: '开发流程', link: '/superpowers/dev-workflow' },
            { text: '代码评审与 Git', link: '/superpowers/code-review-git' },
            { text: 'Skill 管理', link: '/superpowers/skill-management' },
          ]
        }
      ],
      '/community/': [
        {
          text: '社区 Skills',
          items: [
            { text: '总览', link: '/community/' },
            { text: 'Anthropic 官方 Skills', link: '/community/anthropic-skills' },
            { text: 'Firecrawl & Browser Use', link: '/community/firecrawl-browser-use' },
            { text: 'Vercel 官方 Skills', link: '/community/vercel-skills' },
            { text: 'Skill 资源合集', link: '/community/awesome-lists' },
            { text: 'Karpathy 系 Skills', link: '/community/karpathy-skills' },
            { text: '热门仓库', link: '/community/repos' },
          ]
        }
      ],
      '/system/': [
        {
          text: '系统内置 Skills',
          items: [
            { text: '总览', link: '/system/' },
          ]
        }
      ],
    },
    socialLinks: [
      { icon: 'github', link: 'https://github.com' }
    ],
    search: {
      provider: 'local',
      options: {
        translations: {
          button: { buttonText: '搜索 Skills', buttonAriaLabel: '搜索' },
          modal: {
            noResultsText: '没有找到相关结果',
            resetButtonTitle: '清除查询条件',
            footer: { selectText: '选择', navigateText: '切换', closeText: '关闭' }
          }
        }
      }
    },
    footer: {
      message: 'Codex Skills 资源目录',
      copyright: 'Made with Codex'
    }
  }
})