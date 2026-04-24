class PagesController < ApplicationController
  def home
    @projects = projects_data
  end

  def team
  end

  def about
  end

  def career
  end

  def faq
  end

  def project
    data = projects_data
    index = data.find_index { |p| p[:id] == params[:id] }
    redirect_to root_path if index.nil?
    
    @project = data[index]
    @next_project = data[(index + 1) % data.length]
  end

  private

  def projects_data
    [
      {
        id: 'nebula',
        cat: 'saas',
        title: 'Nebula Analytics',
        tag: 'SaaS · Analytics',
        type: 'Dashboard Product',
        delivery: 'UI/UX, frontend, charts, auth-ready layout',
        desc: 'A high-end analytics dashboard for founders and teams to understand revenue, users, retention and product health in one clean command center.',
        points: ['Live KPI cards', 'Interactive reports', 'Dark premium UI'],
        art: 'analytics',
        founder: 'James Dalton',
        team_roles: {
          lead: 'Elena Frost',
          ui_ux: 'Zayn Rivers',
          backend: 'Elena Frost',
          motion: 'Zayn Rivers'
        },
        stack: [
          { name: 'Ruby on Rails', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rails/rails-plain.svg' },
          { name: 'PostgreSQL', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/postgresql/postgresql-original.svg' },
          { name: 'Chart.js', icon: 'https://www.chartjs.org/img/chartjs-logo.svg' },
          { name: 'Redis', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/redis/redis-original.svg' },
          { name: 'Tailwind CSS', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/tailwindcss/tailwindcss-original-hover.svg' }
        ],
        images: ['/nebula_1.png', '/nebula_2.png', '/studio.png'],
        brief: 'The challenge was to create a data-heavy environment that didn’t feel overwhelming. We utilized a "layered" UI approach where information is revealed as the user needs it. The core engine was built to handle millions of data points per second with sub-millisecond rendering time.',
        log: 'Iteration 01: Focus on core data flow and filtering logic. Iteration 02: Refinement of the glassmorphic chart styles. Iteration 03: Final polish of the interactive sidebar and responsive breakpoints.',
        full_desc: 'Nebula Analytics was born from the need for a simplified yet powerful data visualization tool for early-stage startups. We built a custom charting engine that handles large datasets with zero lag, wrapped in a glassmorphic interface that makes data exploration feel intuitive.'
      },
      {
        id: 'ember',
        cat: 'web',
        title: 'Ember Commerce',
        tag: 'Web · E-Commerce',
        type: 'Online Store',
        delivery: 'Landing page, catalog UI, checkout flow concept',
        desc: 'A luxury e-commerce storefront with immersive product storytelling, smooth category browsing and conversion-focused sections.',
        points: ['Product showcase', 'Trust sections', 'Mobile-first layout'],
        art: 'commerce',
        founder: 'Sophie Laurent',
        team_roles: {
          lead: 'Zayn Rivers',
          ui_ux: 'Zayn Rivers',
          backend: 'Kaelen Voss',
          infra: 'Kaelen Voss'
        },
        stack: [
          { name: 'Next.js', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/nextjs/nextjs-original.svg' },
          { name: 'Shopify API', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/shopify/shopify-original.svg' },
          { name: 'Framer Motion', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/javascript/javascript-original.svg' },
          { name: 'Vercel', icon: 'https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vercel/vercel-original.svg' }
        ],
        images: ['/studio.png', '/nebula_1.png'],
        brief: 'Ember required a magazine-like feel for a high-end fashion brand. We implemented a custom scroll-based animation system that allows product details to fade in gracefully as the user scrolls.',
        log: 'Sprint 1: Layout and typography definition. Sprint 2: Scroll-based animation engine implementation. Sprint 3: Payment gateway integration and security audit.',
        full_desc: 'Ember is a high-fashion e-commerce platform designed to feel like a digital magazine. We focused on high-resolution imagery and subtle parallax effects to create a sense of luxury and exclusivity.'
      },
      {
        id: 'aegis',
        cat: 'infra',
        title: 'Aegis Server Ops',
        tag: 'Infra · Security',
        type: 'Server Management',
        delivery: 'VPS, SSL, backup strategy, uptime monitoring',
        desc: 'A production infrastructure package built for businesses that need stable hosting, secure deployment and reliable maintenance.',
        points: ['SSL + firewall', 'Automated backups', 'Monitoring system'],
        art: 'infra',
        founder: 'TechCorp Solutions',
        team: ['Kaelen Voss (DevOps)', 'Elena Frost (Architecture)'],
        full_desc: 'Aegis is a robust infrastructure-as-a-service (IaaS) solution that automates server provisioning and security hardening. It ensures that mission-critical apps stay online with 99.9% availability.'
      },
      {
        id: 'orion',
        cat: 'saas',
        title: 'Orion CRM Portal',
        tag: 'SaaS · CRM',
        type: 'Internal Business App',
        delivery: 'CRM screens, pipeline UI, user roles structure',
        desc: 'A modern CRM portal concept for sales teams to manage leads, deals, tasks and pipeline performance without interface clutter.',
        points: ['Lead pipeline', 'Role-based UI', 'Activity timeline'],
        art: 'crm',
        founder: 'Marcus Knight',
        team: ['Elena Frost (Systems)', 'Zayn Rivers (Design)'],
        full_desc: 'Orion CRM solves the "complexity fatigue" of traditional CRMs. We focused on a unified activity timeline and a drag-and-drop pipeline that sales reps actually enjoy using.'
      }
    ]
  end
end
