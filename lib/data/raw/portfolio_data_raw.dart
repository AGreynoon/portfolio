import 'dart:convert';

/// Provides raw JSON portfolio datasets embedded synchronously for zero-latency
/// static pre-rendering (Dart VM) and instant client hydration (browser).
abstract final class PortfolioDataRaw {
  static const String enJson = r'''{
  "name": "Ahmed Ameen Greynoon",
  "title": "Flutter Developer",
  "bio": "Mobile Application Developer specializing in building scalable mobile applications with Flutter, Dart, Riverpod, Clean Architecture, and MVVM patterns. Proven track record leading mobile workflows, engineering resilient modular architectures, and automating CI/CD delivery pipelines.",
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
          "role": "Technical Support Staff",
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
      "apkUrl": "https://drive.google.com/file/d/1OiY2B5Bkq2ftFkWe2-06vFgOBwJrNITk/view?usp=drive_link"
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
  "title": "مطور تطبيقات فلاتر",
  "bio": "مطور تطبيقات جوال متخصص في بناء تطبيقات قابلة للتوسع باستخدام Flutter و Dart و Riverpod ومعمارية Clean Architecture ونمط MVVM. أمتلك سجلاً حافلاً في قيادة دورة حياة تطوير تطبيقات الجوال، وهندسة معمارية برمجية معيارية ومرنة، وأتمتة مسارات النشر والتسليم المستمر (CI/CD).",
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
          "role": "مطور تطبيقات فلاتر (Mid-Level)",
          "period": "يناير 2026 - حتى الآن",
          "employmentType": "دوام كامل",
          "achievements": [
            "تصميم وبناء تطبيق فلاتر متكامل من الصفر، إلى جانب تطوير ميزات جديدة وإصلاح الأخطاء البرمجية لمشروعي جوال قائمين.",
            "التعاون والتنسيق الوثيق مع مديري المنتجات ومصممي تجربة وواجهة المستخدم (UI/UX) ومهندسي الواجهات الخلفية وفرق ضمان الجودة، لضمان تكامل الميزات بسلاسة وتسليم منتجات برمجية عالية الجودة.",
            "هندسة وأتمتة مسارات النشر والتسليم المستمر (CI/CD) للجوال باستخدام Codemagic و GitHub Actions، لتسهيل عمليات الاختبار الداخلي والتجهيز والإطلاق لمتجري App Store و Google Play.",
            "تحليل متطلبات وأفكار العملاء، وتقديم استشارات وملاحظات تقنية استراتيجية وتقييمات للجدوى الفنية من منظور تطويري.",
            "إجراء اختبارات دقيقة للميزات قبل تسليمها لفريق ضمان الجودة (Pre-QA)، وتقديم دعم تقني شامل بعد الإطلاق لضمان استقرار التطبيقات ورضا العملاء.",
            "إنجاز المهام الموكلة في دورات العمل (Sprints) بكفاءة عالية، وترتيب أولويات العمل للالتزام بالمواعيد النهائية وتحقيق معالم المشروع الأساسية باستمرار."
          ]
        },
        {
          "role": "مطور تطبيقات فلاتر مبتدئ (Junior)",
          "period": "نوفمبر 2024 - يناير 2026",
          "employmentType": "دوام كامل",
          "achievements": [
            "المساهمة في بناء تطبيقات فلاتر من الصفر، بالإضافة إلى تطوير ميزات جديدة ومعالجة المشاكل البرمجية في مشاريع جوال أخرى.",
            "التعاون المستمر مع أعضاء الفريق لضمان تكامل الميزات بسلاسة وتسليم منتجات برمجية ذات كفاءة وجودة عالية.",
            "تنفيذ مهام دورات العمل (Sprints) بفاعلية، وترتيب الأولويات لتحقيق الأهداف الرئيسية للمشاريع والالتزام بمواعيد التسليم."
          ]
        }
      ]
    },
    {
      "id": "alarabiyasoft",
      "company": "العربية سوفت للأنظمة والحلول التقنية",
      "positions": [
        {
          "role": "أخصائي دعم فني",
          "period": "11/2024 - حتى الآن",
          "employmentType": "دوام جزئي",
          "achievements": [
            "تهيئة بيئات العمل التشغيلية، وإدارة تثبيت الأنظمة البرمجية، وتقديم تدريب شامل لتمكين العملاء ومساعدتهم على تبني واستخدام الأنظمة بكفاءة.",
            "تشخيص وحل المشكلات التقنية المعقدة، وتقديم تقارير تشخيصية تفصيلية للإدارات المعنية لضمان استمرارية سير الأعمال دون انقطاع.",
            "التعاون والتنسيق المشترك مع فريقي المبيعات وتطوير المنتجات لمواءمة الحلول التقنية مع نماذج واحتياجات أعمال العملاء."
          ]
        },
        {
          "role": "مسؤول دعم فني",
          "period": "03/2023 - 11/2024",
          "employmentType": "دوام كامل",
          "achievements": [
            "تهيئة بيئات العمل التشغيلية، وإدارة تثبيت الأنظمة البرمجية، وتقديم تدريب شامل لتمكين العملاء من استخدام الأنظمة بكفاءة.",
            "تشخيص وحل المشكلات التقنية وتقديم تقارير دقيقة للإدارات المعنية لضمان استمرارية العمل دون معوقات.",
            "التعاون والتنسيق مع فريقي المبيعات وتطوير المنتجات لمواءمة الحلول الفنية مع متطلبات العملاء."
          ]
        }
      ]
    },
    {
      "id": "wan-technologies",
      "company": "شركة وان للأنظمة والتقنيات المحدودة",
      "positions": [
        {
          "role": "مطور تطبيقات فلاتر",
          "period": "2023/05 – 2023/10",
          "employmentType": "دوام كامل",
          "achievements": [
            "تطوير تطبيق جوال باستخدام إطار العمل Flutter، والتركيز على التكامل والربط مع واجهات برمجة تطبيقات نظام Odoo ERP.",
            "التعاون مع أعضاء الفريق في بناء تطبيق لإدارة العُهد النقدية، مما أتاح استخراج التقارير المالية ومتابعة ميزانيات المشاريع بدقة.",
            "استخدام GitHub لإدارة التحكم بالإصدارات والتنسيق البرمجي الفعال بين أعضاء الفريق."
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
      "tagline": "خدمة طوارئ وأعطال للمركبات الثقيلة وأساطيل النقل تربط السائقين بفنيي المساعدة على الطريق.",
      "shortDescription": "منصة متخصصة للمساعدة على الطريق مخصصة للشاحنات والمركبات الثقيلة في الحالات الحرجة. تتميز بنظام توجيه فوري للطلبات عبر نظام GPS، وحفظ الطلبات محلياً عند انقطاع الاتصال (Offline Caching)، ومسارات نشر مؤتمتة عبر Codemagic CI/CD.",
      "myRole": "قيادة التطوير البرمجي لتطبيق الجوال لمنصة المساعدة على الطريق، بدءاً من بناء المعمارية الأساسية وحتى النشر على المتاجر.",
      "roleContributions": [
        "تصميم وبناء التطبيق باستخدام Flutter و Riverpod وتطبيق مبادئ Clean Architecture لضمان مرونة الصيانة وقابلية التوسع.",
        "دمج خدمات خرائط Google والتتبع المباشر للموقع لتوجيه ومطابقة السائقين مع فنيي الصيانة لحظياً في الوقت الفعلي.",
        "تطوير آلية التخزين المحلي والمزامنة التلقائية (Offline-First) لضمان استمرار تقديم الخدمة عند انقطاع الاتصال في الطرق البرية والمناطق النائية.",
        "أتمتة مسارات البناء والإطلاق عبر Codemagic CI/CD وإدارة عمليات النشر على متجري Google Play و Apple App Store.",
        "دمج أدوات Firebase و Sentry و Microsoft Clarity لمراقبة الأعطال البرمجية في الوقت الفعلي وتحليل مقاييس تفاعل وتجربة المستخدم."
      ]
    },
    {
      "id": "tahara",
      "title": "طهارة",
      "tagline": "تطبيق تجارة إلكترونية متميز للصحة والعناية الشخصية، متكامل مع منظومة متاجر سلة (Salla).",
      "shortDescription": "تطبيق تجارة إلكترونية شامل مبني بالاعتماد على واجهات Salla REST APIs، يتميز بتصفح سريع وسلس لكتالوج المنتجات، وإدارة قوية لحالة سلة التسوق، وتتبع تحليلي لسلوك المتسوقين.",
      "myRole": "بناء وتطوير الوحدات البرمجية الأساسية للتجارة الإلكترونية وإدارة التكامل والربط مع منظومة منصة سلة.",
      "roleContributions": [
        "التكامل والربط مع واجهات Salla REST APIs لتوفير تصفح سلس لكتالوج المنتجات، وفهرسة البحث، وتحديثات المخزون في الوقت الفعلي.",
        "بناء وإدارة حالة سلة التسوق ومراحل إتمام الطلب باحترافية مع مزامنة محلية سريعة وموثوقة.",
        "دمج Sentry و Microsoft Clarity لرصد نقاط تعثر المستخدمين، ومعالجة تقارير الأعطال البرمجية، وتحسين مسارات إتمام الشراء ومعدلات التحويل.",
        "إدارة وصيانة مسارات النشر المستمر عبر Codemagic CI/CD لضمان التسليم السلس والمستمر لمتجري Apple App Store و Google Play."
      ]
    },
    {
      "id": "nasha",
      "title": "ناشا",
      "tagline": "أداة لاستخراج اقتباسات الكتب وتصنيفها وتنظيمها باستخدام التعرف الضوئي على النصوص (OCR) مباشرة من الجهاز.",
      "shortDescription": "تطبيق رفيق للقراءة يعمل دون إنترنت (Offline-First)، يستخرج النصوص من صفحات الكتب الورقية باستخدام التعرف الضوئي المعتمد على تعلّم الآلة في الجهاز، مع توفير تدوين منظم للملاحظات وفهرسة فورية بالوسوم.",
      "myRole": "المطور والمصمم المستقل للمشروع؛ مسؤول عن الفكرة وتصميم واجهات وتجربة المستخدم (UI/UX) وبناء المعمارية البرمجية والتنفيذ بالكامل.",
      "roleContributions": [
        "توظيف تقنيات تعلّم الآلة على الجهاز عبر Google ML Kit OCR لاستخراج النصوص بدقة من صور صفحات الكتب دون الحاجة للاتصال بالإنترنت.",
        "تصميم هيكل قاعدة بيانات SQLite محلية (Offline-First) تدعم البحث النصي الكامل، وإدارة الوسوم المخصصة، وتصنيف الاقتباسات بكفاءة.",
        "بناء واجهة مستخدم بسيطة ومريحة تركز على تجربة القارئ وجمالية الخطوط والقراءة الخالية تماماً من المشتتات.",
        "إدارة دورات الإصدار، وبناء حزم ملفات APK، وتوزيع النسخ مفتوحة المصدر عبر GitHub Releases."
      ]
    },
    {
      "id": "all-recipes-cooking",
      "title": "جميع الوصفات",
      "tagline": "تطبيق طهي غني بالميزات لاستكشاف ألذ الوصفات ومرافقة المستخدم بخطوات تحضير تفصيلية.",
      "shortDescription": "تطبيق جوال حديث ومميز لاكتشاف وصفات الطهي ودليل الطبخ، مبني باستخدام Flutter و Riverpod ومعمارية Clean Architecture. يتميز باستعراض الوصفات المصنفة، وتفصيل المكونات، وخطوات التحضير خطوة بخطوة، والتحليلات والقيم الغذائية، مع دعم التبديل الفوري بين اللغات.",
      "myRole": "مهندس تطبيقات جوال؛ مسؤول عن هندسة المعمارية البرمجية، وإدارة الحالة التفاعلية، والتكامل مع واجهات الـ REST API، ودعم تعدد اللغات (Localization).",
      "roleContributions": [
        "هندسة وتصميم معمارية برمجية معيارية موجهة بالميزات (Feature-First Clean Architecture) تفصل بدقة بين طبقات العرض والواجهات (Presentation) ونطاق العمل (Domain) والبيانات (Data).",
        "تطوير نظام إدارة حالة تفاعلي باستخدام Riverpod (مع Annotations و Generators) لقوائم الوصفات والتصنيفات والمفضلة بكفاءة عالية.",
        "التكامل مع واجهات REST APIs باستخدام مكتبة Dio مع Interceptors للتعامل المنظم مع بيانات واستجابات JSON والتعافي من الأخطاء.",
        "بناء واجهة مستخدم متجاوبة مع مختلف مقاسات الشاشات باستخدام ScreenUtil، وتخطيطات الشبكة المتفاوتة (Staggered Grid)، وتأثيرات التحميل الحركية (Shimmer).",
        "إعداد دعم متكامل لتعدد اللغات (العربية والإنجليزية) مع التبديل الفوري أثناء التشغيل، والتكيف التلقائي والسلس مع اتجاهات التخطيط (RTL و LTR)."
      ]
    }
  ]
}''';

  static Map<String, dynamic> get en => jsonDecode(enJson) as Map<String, dynamic>;

  static Map<String, dynamic> get ar => jsonDecode(arJson) as Map<String, dynamic>;
}
