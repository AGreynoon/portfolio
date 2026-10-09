import 'dart:convert';

/// Provides raw JSON portfolio datasets embedded synchronously for zero-latency
/// static pre-rendering (Dart VM) and instant client hydration (browser).
abstract final class PortfolioDataRaw {
  static const String enJson = r'''{
  "name": "Ahmed Ameen Greynoon",
  "title": "Mid-Level Flutter Developer",
  "bio": "Mid-Level Flutter Developer specializing in building scalable, offline-first mobile applications with Flutter, Dart, Riverpod, Clean Architecture, and MVVM patterns. Proven track record leading mobile workflows, engineering resilient modular architectures, and automating CI/CD delivery pipelines.",
  "avatarUrl": "images/profile.jpg",
  "socialLinks": [
    {
      "label": "LinkedIn",
      "url": "https://www.linkedin.com/in/ahmed-ameen-greynoon",
      "icon": "linkedin"
    },
    {
      "label": "GitHub",
      "url": "https://github.com/AGreynoon",
      "icon": "github"
    },
    {
      "label": "Gmail",
      "url": "mailto:greynoon.dev@gmail.com",
      "icon": "gmail"
    },
    {
      "label": "WhatsApp",
      "url": "https://wa.me/+967734633105",
      "icon": "whatsapp"
    },
    {
      "label": "Download CV",
      "url": "https://drive.google.com/file/d/12fLn7x-Jo-jA61s3DlOxnIv9dEpzxAEk/view?usp=sharing",
      "icon": "download"
    }
  ],
  "companyExperiences": [
    {
      "id": "bootfi",
      "company": "Bootfi",
      "positions": [
        {
          "role": "Mid-Level Flutter Developer",
          "period": "Jan 2026 - Present",
          "employmentType": "Full-time",
          "achievements": [
            "Architected and built a comprehensive Flutter application from the ground up, alongside developing new features and resolving bugs for two existing mobile projects.",
            "Partner with Product Managers, UI/UX designers, backend engineers, and QA teams to ensure seamless feature integration and high-quality product delivery.",
            "Engineered automated mobile CI/CD pipelines using Codemagic and GitHub Actions to streamline internal testing, staging, and production releases for both the Apple App Store and Google Play Store.",
            "Analyze client concepts and requirements, providing strategic technical feedback and feasibility assessments from a development perspective.",
            "Conduct rigorous pre-QA feature testing and deliver comprehensive post-launch technical support to guarantee long-term application stability and client satisfaction.",
            "Execute assigned sprint tasks efficiently, prioritizing workflows to consistently meet critical project milestones and delivery deadlines."
          ]
        },
        {
          "role": "Junior Flutter Developer",
          "period": "Nov 2024 - Jan 2026",
          "employmentType": "Full-time",
          "achievements": [
            "Associate building Flutter applications from the ground up, alongside developing new features and resolving bugs for other mobile projects.",
            "Collaborate with other team members to ensure seamless feature integration and high-quality product delivery.",
            "Execute assigned sprint tasks efficiently, prioritizing workflows to meet critical project milestones and delivery deadlines consistently."
          ]
        }
      ]
    },
    {
      "id": "alarabiyasoft",
      "company": "Alarabiyasoft for Systems and Technical Solutions",
      "positions": [
        {
          "role": "Technical Support Specialist",
          "period": "11/2024 - present",
          "employmentType": "Part-time",
          "achievements": [
            "Configured operational environments, managed software installations, and conducted comprehensive training to drive client product adoption.",
            "Resolved complex technical issues and provided detailed diagnostic reports to internal departments to ensure uninterrupted business operations.",
            "Collaborated cross-functionally with sales and product development teams to align technical solutions with client business models."
          ]
        },
        {
          "role": "Technical Support Specialist",
          "period": "03/2023 - 11/2024",
          "employmentType": "Full-time",
          "achievements": [
            "Configured operational environments, managed software installations, and conducted comprehensive training to drive client product adoption.",
            "Resolved complex technical issues and provided detailed diagnostic reports to internal departments to ensure uninterrupted business operations.",
            "Collaborated cross-functionally with sales and product development teams to align technical solutions with client business models."
          ]
        }
      ]
    },
    {
      "id": "wan-technologies",
      "company": "WAN for System & Technologies, Co, LTD",
      "positions": [
        {
          "role": "Flutter Developer",
          "period": "2023/05 – 2023/10",
          "employmentType": "Full Time",
          "achievements": [
            "Developed a mobile application using the Flutter framework, focusing on integration with Odoo ERP API.",
            "Collaborated with other team members to build a petty cash management application, enabling financial reporting and budget tracking for specific projects.",
            "Utilized GitHub for version control and team collaboration."
          ]
        }
      ]
    }
  ],
  "education": [
    {
      "id": "hadhramaut-university",
      "degree": "Bachelor's degree, Computer Science",
      "institution": "Hadhramaut University",
      "period": "09/2018 – 09/2022",
      "location": "Al Mukalla, Yemen"
    }
  ],
  "skills": [
    "Flutter",
    "Dart",
    "Riverpod",
    "Bloc",
    "Clean Architecture",
    "MVVM",
    "REST APIs",
    "SQL",
    "SQLite",
    "Firebase",
    "Analytics",
    "Google Play store",
    "Apple Store",
    "Codemagic",
    "Sentry",
    "Microsoft Clarity",
    "GitHub Actions",
    "Git",
    "GitKraken",
    "FVM",
    "AI agents",
    "Figma",
    "Xcode",
    "Android Studio",
    "Windows",
    "Linux/macOS"
  ],
  "projects": [
    {
      "id": "time-of-necessity",
      "title": "Time of Necessity",
      "tagline": "Fleet emergency breakdown service connecting heavy vehicle drivers with roadside mechanics.",
      "shortDescription": "A mission-critical roadside assistance platform engineered for heavy vehicles. Features real-time GPS dispatch, offline request caching, and automated Codemagic CI/CD deployment pipelines.",
      "myRole": "Led the mobile engineering of the roadside assistance platform from foundational architecture to store deployment.",
      "roleContributions": [
        "Architected and built the application using Flutter, Riverpod, and Clean Architecture principles for high maintainability.",
        "Integrated Google Maps API and live location tracking for real-time driver-to-mechanic dispatching.",
        "Engineered offline-first caching and automatic sync to handle connectivity drops in remote transit corridors.",
        "Automated build and release pipelines with Codemagic CI/CD, managing deployments to Google Play and Apple App Store.",
        "Integrated Firebase, Sentry, and Microsoft Clarity for real-time crash monitoring and UX telemetry."
      ],
      "logo": "images/project_images/time_of_necessity/logo.png",
      "screenshots": [
        "images/project_images/time_of_necessity/01.jpg",
        "images/project_images/time_of_necessity/02.jpg",
        "images/project_images/time_of_necessity/03.jpg",
        "images/project_images/time_of_necessity/04.png"
      ],
      "tags": [
        "Flutter",
        "Riverpod",
        "Google Maps Services",
        "Firebase",
        "Sentry",
        "Microsoft Clarity",
        "Clean Architecture",
        "Codemagic CI/CD",
        "Github",
        "REST APIs",
        "Google Play Store",
        "Apple Store"
      ],
      "playStoreUrl": "https://play.google.com/store/apps/details?id=com.timeofnecessity.app",
      "appStoreUrl": "https://apps.apple.com/us/app/%D9%88%D9%82%D8%AA-%D8%A7%D9%84%D9%84%D8%B2%D9%88%D9%85/id6786264168",
      "websiteUrl": "https://timeofnecessity.com/"
    },
    {
      "id": "tahara",
      "title": "Tahara",
      "tagline": "Premium health and wellness e-commerce application integrated with the Salla merchant ecosystem.",
      "shortDescription": "Comprehensive e-commerce application built on Salla REST APIs, featuring high-speed product catalog browsing, robust cart state management, and user behavior analytics tracking.",
      "myRole": "Built and scaled core e-commerce modules and third-party integrations with the Salla merchant platform.",
      "roleContributions": [
        "Integrated Salla REST APIs for smooth product catalog browsing, search indexing, and real-time stock updates.",
        "Implemented robust shopping cart and checkout state management with fast, reliable local synchronization.",
        "Integrated Sentry and Microsoft Clarity to track user friction, resolve crash reports, and optimize conversion flows.",
        "Maintained Codemagic CI/CD workflows for seamless continuous delivery to Apple App Store and Google Play."
      ],
      "logo": "images/project_images/tahara/logo.png",
      "screenshots": [
        "images/project_images/tahara/01.png",
        "images/project_images/tahara/02.png",
        "images/project_images/tahara/03.png",
        "images/project_images/tahara/04.png",
        "images/project_images/tahara/05.png",
        "images/project_images/tahara/06.png",
        "images/project_images/tahara/07.png",
        "images/project_images/tahara/08.png"
      ],
      "tags": [
        "Flutter",
        "Dart",
        "Riverpod",
        "Bloc",
        "Firebase",
        "Sentry",
        "Microsoft Clarity",
        "Clean Architecture",
        "Codemagic CI/CD",
        "Github",
        "REST APIs",
        "Google Play Store",
        "Apple Store"
      ],
      "playStoreUrl": "https://play.google.com/store/apps/details?id=com.tahara.tahara_app&hl=en",
      "appStoreUrl": "https://apps.apple.com/us/app/tahara-%D8%B7%D9%87%D8%A7%D8%B1%D8%A9/id6446452995",
      "websiteUrl": "https://tahara.com.sa/"
    },
    {
      "id": "nasha",
      "title": "Nasha",
      "tagline": "Book quote extraction, categorization, and organizer utility with on-device OCR.",
      "shortDescription": "An offline-first reading companion app that extracts text from physical book pages using on-device machine learning OCR, providing structured note-taking and instant tag indexing.",
      "myRole": "Sole creator and developer responsible for concept, UI/UX design, architecture, and complete implementation.",
      "roleContributions": [
        "Implemented on-device machine learning OCR using Google ML Kit to extract text from physical book photos without internet.",
        "Designed an offline-first SQLite database schema supporting full-text search, custom tags, and categorized quotes.",
        "Built a minimalist, reader-centric interface focused on typography and zero distraction.",
        "Managed release cycles, APK packaging, and open-source distribution via GitHub Releases."
      ],
      "logo": "images/project_images/nasha/logo.png",
      "screenshots": [
        "images/project_images/nasha/01.png",
        "images/project_images/nasha/02.png",
        "images/project_images/nasha/03.png",
        "images/project_images/nasha/04.png",
        "images/project_images/nasha/05.png",
        "images/project_images/nasha/06.png",
        "images/project_images/nasha/07.png",
        "images/project_images/nasha/08.png",
        "images/project_images/nasha/09.png",
        "images/project_images/nasha/10.png",
        "images/project_images/nasha/11.png",
        "images/project_images/nasha/12.png"
      ],
      "tags": ["Flutter", "Dart", "Riverpod", "ML Kit OCR", "SQLite", "REST APIs"],
      "apkUrl": "https://github.com/AhmedGreynoon/nasha-app/releases"
    },
    {
      "id": "all-recipes-cooking",
      "title": "All Recipes",
      "tagline": "Feature-rich culinary browsing and step-by-step cooking companion application.",
      "shortDescription": "A modern recipe discovery and culinary guide application built with Flutter, Riverpod, and Clean Architecture. Features categorized recipe exploration, detailed ingredient breakdowns, step-by-step cooking directions, nutritional analytics, and instant multi-language switching.",
      "myRole": "Mobile Application Engineer responsible for architectural engineering, reactive state management, REST API integration, and localization.",
      "roleContributions": [
        "Architected modular feature-first Clean Architecture separating presentation, domain, and data layers.",
        "Engineered reactive state management with Riverpod (annotations & generators) for recipe feeds, categories, and bookmarks.",
        "Integrated REST APIs using Dio with interceptors for structured JSON payload handling and error resilience.",
        "Implemented responsive UI with ScreenUtil, Staggered Grid layouts, and shimmer loading animations.",
        "Configured full multi-language localization (Arabic & English) with seamless runtime switching and RTL/LTR layout adaptability."
      ],
      "logo": "images/project_images/all-recipes-cooking/logo.png",
      "screenshots": [
        "images/project_images/all-recipes-cooking/01.png",
        "images/project_images/all-recipes-cooking/02.png",
        "images/project_images/all-recipes-cooking/03.png",
        "images/project_images/all-recipes-cooking/04.png",
        "images/project_images/all-recipes-cooking/05.png",
        "images/project_images/all-recipes-cooking/06.png"
      ],
      "tags": [
        "Flutter",
        "Dart",
        "Riverpod",
        "Clean Architecture",
        "REST APIs",
        "Dio",
        "GoRouter",
        "Multi-Language (i18n)",
        "ScreenUtil"
      ],
      "repoUrl": "https://github.com/aldeerah400/All-recipes-cooking-Mobile"
    }
  ]
}''';

  static const String arJson = r'''{
  "name": "أحمد أمين قرينون",
  "title": "مطور تطبيقات فلاتر (Mid-Level Flutter Developer)",
  "bio": "مطور تطبيقات فلاتر بخبرة متوسطة متخصص في بناء تطبيقات جوال عالية الكفاءة وتعمل دون اتصال بالإنترنت باستخدام Flutter و Dart و Riverpod ومعمارية Clean Architecture ونمط MVVM. سجل حافل في قيادة مسارات تطوير الجوال وتصميم بنيات برمجية معيارية وأتمتة خطوط النشر المستمر (CI/CD).",
  "socialLinks": [
    {
      "label": "لينكد إن",
      "icon": "linkedin"
    },
    {
      "label": "جيت هاب",
      "icon": "github"
    },
    {
      "label": "البريد الإلكتروني",
      "icon": "gmail"
    },
    {
      "label": "واتساب",
      "icon": "whatsapp"
    },
    {
      "label": "تحميل السيرة الذاتية",
      "icon": "download"
    }
  ],
  "companyExperiences": [
    {
      "id": "bootfi",
      "company": "بوتفاي",
      "positions": [
        {
          "role": "مطور تطبيقات فلاتر (Mid-Level Flutter Developer)",
          "period": "يناير 2026 - حتى الآن",
          "employmentType": "دوام كامل",
          "achievements": [
            "هندسة وبناء تطبيق فلاتر متكامل من الصفر، بالإضافة إلى تطوير ميزات جديدة وإصلاح الأخطاء لمشروعين متنقلين قائمين.",
            "التعاون مع مديري المنتجات ومصممي واجهات وتجربة المستخدم ومهندسي الواجهات الخلفية وفرق ضمان الجودة لضمان تكامل الميزات وتسليم منتجات عالية الجودة.",
            "تصميم وأتمتة مسارات CI/CD للجوال باستخدام Codemagic و GitHub Actions لتبسيط الاختبارات الداخلية وإصدارات الإنتاج لمتجري Apple App Store و Google Play Store.",
            "تحليل أفكار ومتطلبات العملاء، وتقديم الملاحظات التقنية الاستراتيجية وتقييمات الجدوى من منظور التطوير البرمجي.",
            "إجراء اختبارات دقيقة للميزات قبل مرحلة ضمان الجودة (Pre-QA) وتقديم دعم تقني شامل بعد الإطلاق لضمان استقرار التطبيق ورضا العملاء.",
            "تنفيذ مهام السبرنت بدقة وكفاءة، وترتيب أولويات سير العمل لتحقيق أهداف المشروع والالتزام بمواعيد التسليم المحددة."
          ]
        },
        {
          "role": "مطور تطبيقات فلاتر مبتدئ (Junior Flutter Developer)",
          "period": "نوفمبر 2024 - يناير 2026",
          "employmentType": "دوام كامل",
          "achievements": [
            "المشاركة في بناء تطبيقات فلاتر من الصفر، إلى جانب تطوير ميزات جديدة وإصلاح الأخطاء لمشاريع جوال أخرى.",
            "التعاون المستمر مع أعضاء الفريق لضمان سلاسة دمج الميزات وتسليم منتج عالي الجودة.",
            "تنفيذ مهام السبرنت بكفاءة، وترتيب الأولويات لتحقيق المعالم الرئيسية للمشروع والالتزام بمواعيد التسليم."
          ]
        }
      ]
    },
    {
      "id": "alarabiyasoft",
      "company": "العربية سوفت للأنظمة والحلول التقنية (Alarabiyasoft)",
      "positions": [
        {
          "role": "أخصائي دعم فني (Technical Support Specialist)",
          "period": "11/2024 - حتى الآن",
          "employmentType": "دوام جزئي",
          "achievements": [
            "تهيئة وتكوين البيئات التشغيلية، وإدارة تثبيت البرمجيات، وتقديم التدريب الشامل لتمكين العملاء من تبني واستخدام الأنظمة.",
            "حل المشكلات التقنية المعقدة وتقديم تقارير تشخيصية تفصيلية للإدارات المعنية لضمان استمرارية الأعمال دون انقطاع.",
            "التعاون الفعال مع فرق المبيعات وتطوير المنتجات لمواءمة الحلول التقنية مع نماذج أعمال العملاء المتنوعة."
          ]
        },
        {
          "role": "أخصائي دعم فني (Technical Support Specialist)",
          "period": "03/2023 - 11/2024",
          "employmentType": "دوام كامل",
          "achievements": [
            "تهيئة وتكوين البيئات التشغيلية، وإدارة تثبيت البرمجيات، وتقديم التدريب الشامل لتمكين العملاء من تبني واستخدام الأنظمة.",
            "حل المشكلات التقنية المعقدة وتقديم تقارير تشخيصية تفصيلية للإدارات المعنية لضمان استمرارية الأعمال دون انقطاع.",
            "التعاون الفعال مع فرق المبيعات وتطوير المنتجات لمواءمة الحلول التقنية مع نماذج أعمال العملاء المتنوعة."
          ]
        }
      ]
    },
    {
      "id": "wan-technologies",
      "company": "شركة وان للأنظمة والتقنيات المحدودة (WAN Co, LTD)",
      "positions": [
        {
          "role": "مطور تطبيقات فلاتر (Flutter Developer)",
          "period": "2023/05 – 2023/10",
          "employmentType": "دوام كامل",
          "achievements": [
            "تطوير تطبيق جوال متكامل باستخدام إطار عمل Flutter مع التركيز على الربط والتكامل مع واجهات Odoo ERP API.",
            "التعاون مع أعضاء الفريق لبناء تطبيق إدارة العهد النقدية، مما مكّن من إعداد التقارير المالية وتتبع الميزانيات المخصصة للمشاريع.",
            "استخدام GitHub لإدارة النسخ والتحكم في الإصدارات والتعاون البرمجي الفعال مع الفريق."
          ]
        }
      ]
    }
  ],
  "education": [
    {
      "id": "hadhramaut-university",
      "degree": "بكالوريوس في علوم الحاسوب",
      "institution": "جامعة حضرموت",
      "period": "09/2018 – 09/2022",
      "location": "المكلا، اليمن"
    }
  ],
  "projects": [
    {
      "id": "time-of-necessity",
      "title": "وقت اللزوم",
      "tagline": "منصة مساعدة طوارئ الشاحنات والمركبات الثقيلة لربط السائقين بفنيي الصيانة الميدانية.",
      "shortDescription": "منصة حيوية لإنقاذ وإصلاح الشاحنات على الطرقات السريعة. تتميز بالإرسال المباشر عبر GPS، والتخزين المؤقت للطلبات دون اتصال، وخطوط نشر مؤتمتة عبر Codemagic.",
      "myRole": "قيادة التطوير البرمجي لمنصة مساعدة طوارئ المركبات من مرحلة التأسيس المعماري وحتى النشر على المتاجر.",
      "roleContributions": [
        "هندسة وبناء التطبيق باستخدام Flutter و Riverpod ومبادئ Clean Architecture لضمان سهولة الصيانة وقابلية التوسع.",
        "دمج خدمات خرائط Google والتتبع المباشر للموقع لتمكين التوجيه الفوري بين السائقين وفنيي الصيانة.",
        "تصميم آلية التخزين المؤقت دون اتصال والمزامنة التلقائية للتعامل مع انقطاع الشبكة على الطرق السريعة النائية.",
        "أتمتة خطوط البناء والإطلاق باستخدام Codemagic CI/CD وإدارة النشر على متجري Google Play و Apple App Store.",
        "ربط أدوات Firebase و Sentry و Microsoft Clarity لتتبع الأخطاء البرمجية وتحليل أداء تجربة المستخدم في الوقت الفعلي."
      ]
    },
    {
      "id": "tahara",
      "title": "طهارة",
      "tagline": "تطبيق تجارة إلكترونية متكامل للصحة والعناية الشخصية مدمج مع منظومة منصة سلة.",
      "shortDescription": "تطبيق تسوق إلكتروني متكامل مبني على واجهات Salla REST API، يتيح تصفحاً فائق السرعة لكتالوج المنتجات، وإدارة دقيقة لحالة السلة، وتتبع سلوك المتسوقين.",
      "myRole": "بناء وتوسيع الوحدات البرمجية الأساسية للتجارة الإلكترونية والتكامل التقني مع منصة سلة (Salla).",
      "roleContributions": [
        "التكامل مع واجهات برمجة تطبيقات سلة (Salla REST APIs) لتصفح كتالوج المنتجات، البحث المتقدم، وتحديث المخزون الفوري.",
        "تطوير إدارة حالة دقيقة لسلة التسوق ومسار إتمام الطلب مع مزامنة محلية سريعة وموثوقة.",
        "دمج Sentry و Microsoft Clarity لتتبع تجربة المتسوقين، معالجة تقارير الأعطال، وتحسين مسارات الشراء.",
        "إدارة وتحديث مسارات Codemagic CI/CD لضمان التسليم المستمر والسلس لمتجري Apple App Store و Google Play."
      ]
    },
    {
      "id": "nasha",
      "title": "ناشا",
      "tagline": "أداة ذكية لاستخراج واقتباس نصوص الكتب وتصنيفها باستخدام التعرف الضوئي (OCR) على الجهاز.",
      "shortDescription": "تطبيق رفيق للقراء يعمل دون اتصال بالإنترنت لاستخراج النصوص من صفحات الكتب المطبوعة عبر الذكاء الاصطناعي على الجهاز، مع تنظيم الملاحظات وفهرستها.",
      "myRole": "المطور والمصمم المنفرد للمشروع مسؤولاً عن الفكرة وهندسة النظام وتصميم الواجهات والتنفيذ البرمجي الشامل.",
      "roleContributions": [
        "تطبيق تقنيات الذكاء الاصطناعي على الجهاز عبر Google ML Kit OCR لاستخراج النصوص من صور الكتب دون اتصال بالإنترنت.",
        "تصميم بنية قاعدة بيانات محلية SQLite تدعم البحث النصي الكامل، إدارة الوسوم، وتنظيم الاقتباسات في تصنيفات مخصصة.",
        "بناء واجهة مستخدم نقية ومريحة للقراء تركز على وضوح الخطوط والقراءة دون أي مشتتات بصرية.",
        "إدارة دورات الإصدار وحزم ملفات APK وتوزيع النسخ للمستخدمين عبر GitHub Releases."
      ]
    },
    {
      "id": "all-recipes-cooking",
      "title": "جميع الوصفات",
      "tagline": "تطبيق شامل لتصفح واكتشاف وصفات الطهي بدعم متعدد اللغات وخطوات تحضير تفاعلية.",
      "shortDescription": "تطبيق جوال غني بالميزات لاستعراض وصفات الطبخ العالمية وتصنيفاتها، مبني باستخدام Flutter و Riverpod و Clean Architecture. يوفر إرشادات طبخ تفصيلية وقيم غذائية وتجربة مستخدم سلسة باللغتين العربية والإنجليزية.",
      "myRole": "مهندس برمجيات الجوال ومسؤول عن هندسة المعمارية وإدارة الحالة وتكامل واجهات برمجة التطبيقات ودعم اللغات.",
      "roleContributions": [
        "تصميم وهندسة بنية معمارية معيارية (Feature-First Clean Architecture) تفصل طبقات البيانات ونطاق العمل والواجهات.",
        "بناء نظام إدارة حالة تفاعلي باستخدام Riverpod مع معالجة متقدمة لتدفق البيانات وتحديث القوائم.",
        "تكامل كامل مع واجهات RESTful APIs عبر Dio لجلب وتصنيف الوصفات والبحث المتقدم وعرض المكونات والقيم الغذائية.",
        "بناء واجهات مستخدم متجاوبة (Responsive) وسلسة باستخدام ScreenUtil و Staggered Grid مع تأثيرات Shimmer أثناء التحميل.",
        "تطبيق دعم تعدد اللغات (العربية، الإنجليزية، وغيرها) مع تبديل لحظي ودعم كامل لاتجاهات RTL و LTR."
      ]
    }
  ]
}''';

  static Map<String, dynamic> get en => jsonDecode(enJson) as Map<String, dynamic>;

  static Map<String, dynamic> get ar => jsonDecode(arJson) as Map<String, dynamic>;
}
