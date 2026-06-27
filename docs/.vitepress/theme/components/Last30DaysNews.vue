<script setup lang="ts">
import { computed, onMounted, ref } from 'vue'
import { withBase } from 'vitepress'

type NewsItem = {
  id: string
  title: string
  source: string
  date: string
  category: string
  summary: string
  signal: string
  url: string
}

type NewsFeed = {
  updatedAt: string
  generatedBy: string
  query: string
  items: NewsItem[]
}

const feed = ref<NewsFeed | null>(null)
const selectedCategory = ref('全部')
const loadError = ref('')

onMounted(async () => {
  try {
    const response = await fetch(withBase('/data/last30days-news.json'), {
      cache: 'no-store',
    })

    if (!response.ok) {
      throw new Error(`HTTP ${response.status}`)
    }

    feed.value = await response.json()
  } catch (error) {
    loadError.value = error instanceof Error ? error.message : '未知错误'
  }
})

const categories = computed(() => {
  const values = new Set(feed.value?.items.map((item) => item.category) ?? [])
  return ['全部', ...Array.from(values)]
})

const filteredItems = computed(() => {
  const items = feed.value?.items ?? []
  if (selectedCategory.value === '全部') {
    return items
  }

  return items.filter((item) => item.category === selectedCategory.value)
})
</script>

<template>
  <section class="news-panel" aria-labelledby="last30days-news-title">
    <div class="news-header">
      <div>
        <p class="eyebrow">last30days live snapshot</p>
        <h2 id="last30days-news-title">最近 30 天 AI 新闻雷达</h2>
        <p class="lede">
          聚合 AI agent、开发工具、模型发布和治理相关的真实新闻线索，适合快速判断近期关注重点。
        </p>
      </div>
      <div class="update-card">
        <span>数据快照</span>
        <strong>{{ feed?.updatedAt || '加载中' }}</strong>
        <small>{{ feed?.generatedBy || '读取本地新闻数据' }}</small>
      </div>
    </div>

    <div v-if="feed" class="toolbar" aria-label="新闻类别筛选">
      <button
        v-for="category in categories"
        :key="category"
        type="button"
        :class="{ active: category === selectedCategory }"
        @click="selectedCategory = category"
      >
        {{ category }}
      </button>
    </div>

    <div v-if="loadError" class="state">
      新闻数据加载失败：{{ loadError }}
    </div>

    <div v-else-if="!feed" class="state">
      正在加载新闻数据...
    </div>

    <div v-else class="news-grid">
      <article v-for="item in filteredItems" :key="item.id" class="news-card">
        <div class="meta">
          <span>{{ item.category }}</span>
          <span>{{ item.source }}</span>
          <time :datetime="item.date">{{ item.date }}</time>
        </div>
        <h3>
          <a :href="item.url" target="_blank" rel="noreferrer">
            {{ item.title }}
          </a>
        </h3>
        <p>{{ item.summary }}</p>
        <div class="signal">
          <strong>信号</strong>
          <span>{{ item.signal }}</span>
        </div>
      </article>
    </div>
  </section>
</template>

<style scoped>
.news-panel {
  margin: 48px auto 0;
  max-width: 1120px;
  padding: 32px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 8px;
  background: var(--vp-c-bg-soft);
}

.news-header {
  display: grid;
  grid-template-columns: minmax(0, 1fr) 220px;
  gap: 24px;
  align-items: start;
}

.eyebrow {
  margin: 0 0 8px;
  color: var(--vp-c-brand-1);
  font-size: 13px;
  font-weight: 700;
  text-transform: uppercase;
}

h2 {
  margin: 0;
  border-top: 0;
  padding-top: 0;
  font-size: 30px;
  line-height: 1.2;
}

.lede {
  margin: 12px 0 0;
  max-width: 720px;
  color: var(--vp-c-text-2);
  line-height: 1.7;
}

.update-card {
  display: grid;
  gap: 4px;
  padding: 16px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 8px;
  background: var(--vp-c-bg);
}

.update-card span,
.update-card small {
  color: var(--vp-c-text-2);
  font-size: 12px;
}

.update-card strong {
  color: var(--vp-c-text-1);
  font-size: 16px;
}

.toolbar {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  margin-top: 24px;
}

.toolbar button {
  min-height: 34px;
  padding: 0 12px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 6px;
  background: var(--vp-c-bg);
  color: var(--vp-c-text-2);
  cursor: pointer;
}

.toolbar button.active {
  border-color: var(--vp-c-brand-1);
  background: var(--vp-c-brand-soft);
  color: var(--vp-c-brand-1);
  font-weight: 700;
}

.news-grid {
  display: grid;
  grid-template-columns: repeat(2, minmax(0, 1fr));
  gap: 16px;
  margin-top: 20px;
}

.news-card {
  display: flex;
  min-height: 260px;
  flex-direction: column;
  gap: 12px;
  padding: 18px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 8px;
  background: var(--vp-c-bg);
}

.meta {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  color: var(--vp-c-text-3);
  font-size: 12px;
}

.meta span,
.meta time {
  padding: 3px 7px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 6px;
}

.news-card h3 {
  margin: 0;
  font-size: 18px;
  line-height: 1.45;
}

.news-card p {
  margin: 0;
  color: var(--vp-c-text-2);
  line-height: 1.7;
}

.signal {
  display: grid;
  gap: 4px;
  margin-top: auto;
  padding-top: 12px;
  border-top: 1px solid var(--vp-c-divider);
  color: var(--vp-c-text-2);
  font-size: 14px;
  line-height: 1.6;
}

.signal strong {
  color: var(--vp-c-text-1);
}

.state {
  margin-top: 20px;
  padding: 18px;
  border: 1px solid var(--vp-c-divider);
  border-radius: 8px;
  color: var(--vp-c-text-2);
}

@media (max-width: 760px) {
  .news-panel {
    margin-top: 32px;
    padding: 20px;
  }

  .news-header,
  .news-grid {
    grid-template-columns: 1fr;
  }

  h2 {
    font-size: 24px;
  }
}
</style>
