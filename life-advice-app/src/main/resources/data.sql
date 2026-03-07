-- ═══════════════════════════════════════════════════════════════════════
-- CATEGORIES SEED DATA
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO categories (name, description, icon_emoji) VALUES
('Stress Management',   'Techniques and advice to cope with daily stress, anxiety and overwhelm',         '🧘'),
('Time Management',     'Strategies to organise your day, prioritise tasks and boost productivity',       '⏰'),
('Wealth & Finance',    'Practical guidance on budgeting, saving, investing and building financial health','💰'),
('Education & Learning','Tips for effective studying, skill-building, and lifelong learning',             '📚'),
('Personal Conflicts',  'How to navigate disagreements, set boundaries and resolve internal struggles',   '⚔️'),
('Relationships',       'Advice on romantic, family, and friendship dynamics for healthier connections',  '❤️'),
('Mental Health',       'Understanding emotions, building resilience and supporting psychological well-being','🧠'),
('Career & Work',       'Job hunting, workplace communication, growth and professional development',      '💼'),
('Health & Wellness',   'Nutrition, exercise, sleep and habits for a healthier physical life',            '🏃'),
('Productivity',        'Focus techniques, habit building and tools for getting more done',               '🚀'),
('Parenting',           'Raising children with patience, effective communication and positive discipline','👨‍👩‍👧'),
('Self-Confidence',     'Building self-esteem, overcoming imposter syndrome and owning your worth',       '💪');

-- ═══════════════════════════════════════════════════════════════════════
-- STRESS MANAGEMENT (category_id = 1)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I manage overwhelming stress at work?',
 'Overwhelming work stress is one of the most common modern challenges. Start by identifying your top 3 stressors specifically — vague stress is harder to fight than named stress. Use the 4 A''s framework: Avoid stressors you can skip, Alter situations by speaking up or changing your approach, Adapt by reframing your perspective, and Accept what is out of your control. Schedule short 5-minute breathing breaks every 90 minutes — research shows the brain works in 90-minute ultradian cycles. Try box breathing: inhale 4 counts, hold 4, exhale 4, hold 4. This activates the parasympathetic nervous system within 2 minutes. End each day by writing 3 "done" items — celebrating small wins reduces cortisol significantly.',
 'Try the 5-4-3-2-1 grounding technique when overwhelmed: name 5 things you see, 4 you can touch, 3 you hear, 2 you smell, 1 you taste.',
 'stress,work,anxiety,burnout,breathing,coping',
 'BEGINNER', 'HIGH', 1),

('What is the best way to calm down quickly during a panic attack?',
 'During a panic attack, your body''s fight-or-flight response is firing — but you are not in real danger. First, recognise it: say to yourself "This is a panic attack. It will pass." This alone reduces intensity. Breathe out longer than you breathe in — try inhaling for 4 seconds and exhaling for 8. The extended exhale stimulates the vagus nerve and slows heart rate within 60–90 seconds. Ground yourself physically: press your feet firmly on the floor, hold something cold (ice cube, cold water bottle), or splash cold water on your face — the "dive reflex" rapidly slows your heart rate. Avoid catastrophic thoughts. Ride the wave — panic peaks within 10 minutes and always passes.',
 'Keep a small lavender essential oil in your bag. Inhaling it during stress has clinically shown to reduce anxiety within minutes.',
 'panic,anxiety,attack,calm,breathing,emergency',
 'BEGINNER', 'CRITICAL', 1),

('How can I stop worrying about things I cannot control?',
 'Chronic worry about uncontrollable things is essentially a habit of the mind. Start with the "Control Circle": draw two circles — Inner (things you control: your words, actions, responses) and Outer (things you don''t: others'' opinions, economy, weather). Consciously redirect energy inward. Practice "scheduled worry time" — set a 15-minute window daily to worry; when worry arises outside it, write it down and defer it. Journaling helps: write the worry, then write "What''s the worst realistic outcome?" and "What would I do if that happened?" — usually your brain finds it manageable. Mindfulness meditation (even 10 minutes daily) rewires neural pathways over 8 weeks to reduce rumination.',
 'Use the Stoic "memento mori" reframe: ask "Will this matter in 5 years?" — most worries won''t.',
 'worry,control,anxiety,mindfulness,stoicism,rumination',
 'INTERMEDIATE', 'MEDIUM', 1),

('How do I recognise signs of chronic stress before it becomes serious?',
 'Chronic stress is insidious because it creeps in gradually. Watch for these red flags: Physical — persistent headaches, tight jaw, frequent colds, digestive issues, disrupted sleep, low libido. Emotional — irritability with small things, feeling cynical or detached, loss of joy in hobbies, feeling overwhelmed most days. Cognitive — difficulty concentrating, forgetfulness, trouble making decisions. Behavioural — withdrawing socially, increased alcohol/caffeine, neglecting responsibilities. A reliable self-assessment: rate your stress 1–10 daily for 2 weeks. If your average is above 6, proactive intervention is needed. Early action — exercise, therapy, boundary-setting — prevents burnout.',
 'Download a mood tracking app like Daylio or Reflectly. Tracking daily mood creates self-awareness data over time.',
 'chronic stress,burnout,warning signs,mental health,self-awareness',
 'BEGINNER', 'HIGH', 1),

('What are some quick stress relief techniques I can do at my desk?',
 'Desk-based stress relief is crucial for office workers. Try these proven micro-interventions: (1) Progressive Muscle Relaxation — tense each muscle group for 5 seconds, then release, starting from your toes up to your scalp. Takes 5 minutes and dramatically reduces physical tension. (2) The 3-3-3 Rule — name 3 things you see, 3 sounds you hear, move 3 body parts. Instantly interrupts stress spirals. (3) Desk yoga — roll your shoulders backward 10 times, do gentle neck side-stretches, place hands on armrests and do a seated torso twist. (4) Cold water on wrists — there are pulse points here that cool your blood and calm your nervous system rapidly. (5) Write one gratitude statement and read it aloud.',
 'Set a phone reminder every 2 hours: "Check-in — am I tense?" Simple awareness prevents stress from accumulating.',
 'desk,office,quick relief,technique,break,productivity',
 'BEGINNER', 'MEDIUM', 1);

-- ═══════════════════════════════════════════════════════════════════════
-- TIME MANAGEMENT (category_id = 2)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I stop procrastinating and start getting things done?',
 'Procrastination is rarely about laziness — it''s usually about emotion: fear of failure, perfectionism, or feeling overwhelmed. The antidote is lowering the activation energy to start. Use the "2-Minute Rule" (David Allen): if a task takes under 2 minutes, do it now. For bigger tasks, use "Implementation Intentions" — research by Peter Gollwitzer shows stating "I will do X at Y time in Z place" increases follow-through by 300%. Break tasks into the smallest possible first step — not "write report" but "open document and write one sentence." Use the Pomodoro Technique: 25 minutes focused work, 5-minute break. Self-compassion also matters — people who forgive themselves for procrastinating procrastinate less afterward.',
 'Temptation bundling works well: only allow yourself to do something enjoyable (like favourite podcast) while doing a dreaded task.',
 'procrastination,productivity,motivation,habit,focus,pomodoro',
 'BEGINNER', 'HIGH', 2),

('What is the best system to prioritise tasks when everything feels urgent?',
 'When everything feels urgent, you are likely in "reactive mode." The Eisenhower Matrix is the gold standard for reprioritising: Quadrant 1 (Urgent + Important) — do immediately. Quadrant 2 (Not Urgent + Important) — schedule these (this is where growth lives: exercise, planning, relationships). Quadrant 3 (Urgent + Not Important) — delegate or minimise. Quadrant 4 (Not Urgent + Not Important) — eliminate. Most people live in Q1 and Q3, burning out. The goal is to spend more time in Q2. Also use MoSCoW: Must Have, Should Have, Could Have, Won''t Have — tag each task. Each morning, identify your single MIT (Most Important Task) and complete it before checking email or messages.',
 'Write only 3 items on your daily to-do list — a short list forces prioritisation and creates the satisfaction of completion.',
 'priority,Eisenhower,urgent,important,planning,MoSCoW',
 'INTERMEDIATE', 'HIGH', 2),

('How do I create a morning routine that sets me up for a productive day?',
 'A great morning routine has 5 pillars: (1) Movement — even 10 minutes of walking increases dopamine, norepinephrine and serotonin, sharpening focus. (2) Hydration — drink 500ml of water first thing; your body is dehydrated after sleep and this kickstarts metabolism and cognitive clarity. (3) No phone for the first 30 minutes — checking messages immediately triggers reactive thinking rather than proactive intention-setting. (4) Brief planning — spend 5 minutes writing today''s top 3 priorities. (5) Mindset anchor — one minute of gratitude, deep breathing, or reading something inspiring. The key is consistency: do the same routine 66 days and it becomes automatic. Start with just ONE new habit, not five.',
 'Prepare the night before: lay out clothes, prep breakfast, write tomorrow''s to-do list. A "Sunday Reset" sets the tone for the whole week.',
 'morning,routine,habit,productivity,schedule,planning',
 'BEGINNER', 'MEDIUM', 2),

('How do I manage my time better when I work from home?',
 'Working from home dissolves boundaries between personal and professional life, making time management harder. Key strategies: (1) Define working hours and communicate them clearly — place a "working" signal (even a closed door or a specific desk lamp) so your household respects focus time. (2) Time-block your calendar — assign specific tasks to specific time slots and treat them like meetings. (3) Use the "shutdown ritual" — at end of workday, say aloud "Shutdown complete" and close your laptop. This psychological cue helps your brain disengage. (4) Create transition rituals — a short walk before and after work simulates a commute and separates modes. (5) Batch similar tasks together: all calls in the morning, deep work in late morning, admin in afternoon.',
 'Virtual co-working (joining an online focus session) dramatically increases accountability when working from home.',
 'work from home,remote,WFH,boundaries,schedule,focus',
 'INTERMEDIATE', 'MEDIUM', 2);

-- ═══════════════════════════════════════════════════════════════════════
-- WEALTH & FINANCE (category_id = 3)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I start saving money when I am living paycheck to paycheck?',
 'Living paycheck to paycheck is extremely common, but small structural changes make a big difference. Step 1 — Track every rupee/dollar for 30 days using an app (YNAB, Walnut, Moneycontrol). Awareness alone changes spending behaviour. Step 2 — Identify the "Big 3" expenses eating your budget (usually housing, food, transportation) and look for one reduction in each. Step 3 — Automate micro-savings: set up an auto-transfer of even 500 rupees/$5 to a savings account on payday — "pay yourself first." Step 4 — Use the 50/30/20 rule as a target: 50% needs, 30% wants, 20% savings/debt. Even starting at 5% is better than 0. Step 5 — Build a ₹5,000/$100 emergency mini-fund first before anything else — this prevents debt spirals.',
 'Cancel unused subscriptions — most people have 3–5 they have forgotten about. Check your bank statement right now.',
 'savings,budgeting,paycheck,money,finance,emergency fund',
 'BEGINNER', 'HIGH', 3),

('What is the best way to get out of debt quickly?',
 'Two proven debt payoff strategies: (1) Debt Avalanche — list all debts by interest rate, highest first. Pay minimums on all others and attack the highest-interest debt aggressively. This is mathematically optimal — saves the most money. (2) Debt Snowball (Dave Ramsey) — pay off the smallest balance first regardless of interest rate. This builds psychological momentum — research shows people who experience early wins stay motivated longer. Choose the method that fits your personality. Then: stop adding debt — cut cards or freeze them (literally freeze in a block of ice — works). Find one way to increase income temporarily: overtime, freelancing, selling items. Use windfalls (tax refund, bonus) entirely for debt. Consider debt consolidation if you have high-interest credit card debt.',
 'Call your credit card company and ask for a lower interest rate — 70% of people who ask get a reduction, most never do.',
 'debt,payoff,avalanche,snowball,credit,finance',
 'INTERMEDIATE', 'HIGH', 3),

('How do I start investing with very little money?',
 'Starting investing early matters far more than starting with a large amount — time is the most powerful wealth-building variable due to compounding. Step 1 — Clear high-interest debt first (anything above 8–10% interest rate beats most investment returns). Step 2 — Build a 3–6 month emergency fund. Step 3 — Use tax-advantaged accounts first: EPF/PPF (India), 401k/Roth IRA (US) — free tax benefits are like guaranteed returns. Step 4 — Start with index funds or ETFs (Nifty 50 Index Fund / S&P 500 ETF). They are diversified, low-cost and outperform 80% of managed funds over 10+ years. Step 5 — Invest monthly via SIP (Systematic Investment Plan) — even ₹500/$10/month. Don''t try to time the market. "Time in market > timing the market."',
 'The Rule of 72: divide 72 by your return rate to know how long to double money. At 12% returns, money doubles every 6 years.',
 'investing,stocks,index funds,SIP,wealth,compound interest',
 'INTERMEDIATE', 'MEDIUM', 3),

('How do I have a conversation with my partner about money without it turning into a fight?',
 'Money fights are usually not about money — they are about values, power, security and trust. Frame the conversation as a team planning meeting, not a courtroom. Schedule it in advance (not mid-argument), when both are calm and not hungry or tired. Start with shared goals: "What financial life do we want in 5 years?" — align on the vision before discussing tactics. Use "I" statements: "I feel anxious when our savings are low" rather than "You spend too much." Create a no-judgment spending disclosure: both reveal monthly spending with zero criticism first. Establish a "fun money" allowance — each partner gets a guilt-free personal amount, no questions asked. Have monthly money dates: 30 minutes, candles optional.',
 'Read "I Will Teach You to Be Rich" together — couples who learn about money together fight about it less.',
 'money,partner,relationship,finance,communication,budget',
 'INTERMEDIATE', 'MEDIUM', 3);

-- ═══════════════════════════════════════════════════════════════════════
-- EDUCATION & LEARNING (category_id = 4)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How can I study more effectively and retain what I learn?',
 'Most people study by re-reading — this feels productive but is one of the least effective methods (Dunning-Kruger trap). The most research-backed techniques are: (1) Active Recall — close the book and try to recall everything from memory. The struggle of retrieval strengthens memory far more than re-reading. Use flashcards (Anki is excellent). (2) Spaced Repetition — review material at increasing intervals: 1 day, 3 days, 7 days, 21 days. This exploits the "spacing effect" to move knowledge to long-term memory. (3) The Feynman Technique — explain the concept in simple terms as if teaching a 10-year-old. Gaps in your explanation reveal gaps in understanding. (4) Interleaving — mix different subjects/topics rather than blocking one subject for hours. (5) Sleep after studying — memory consolidates during sleep.',
 'Study in 25-minute focused sessions (Pomodoro) with 5-minute breaks. Your brain consolidates information during rest periods.',
 'study,learning,memory,retention,flashcards,Feynman,spaced repetition',
 'BEGINNER', 'MEDIUM', 4),

('How do I stay motivated to learn new skills as an adult?',
 'Adult learning is harder not because adults learn worse, but because: (1) competing responsibilities create time scarcity, (2) adults fear judgment/failure more, and (3) intrinsic motivation wanes without structure. Solutions: Connect the skill to a vivid "why" — not "I want to learn Python" but "I want to build a tool that saves me 2 hours every week." Specificity creates motivation. Use the 20-hour rule (Josh Kaufman) — most skills become usable in just 20 hours of deliberate practice; you don''t need 10,000 hours. Find a learning community (subreddit, cohort, Discord group) — accountability and social learning dramatically increase completion rates. Celebrate micro-milestones. Create a "learning ritual" — same time, same place, removes decision fatigue.',
 'Teach what you learn to someone else within 24 hours of learning it. Teaching is the fastest way to master a skill.',
 'adult learning,motivation,skills,habit,consistency,community',
 'BEGINNER', 'LOW', 4),

('How do I manage exam anxiety and perform my best under pressure?',
 'Exam anxiety is your body''s stress response misfiring — it''s energy intended to help you that is being expressed as panic. Reframe first: research by Alison Wood Brooks at Harvard shows telling yourself "I am excited" (rather than "I am calm") before high-stakes events improves performance — because excitement and anxiety are physiologically similar. Preparation strategies: start revision early and do past papers under timed conditions (simulation reduces novelty-shock). On exam day: arrive early, avoid last-minute cramming (increases anxiety, doesn''t help retention), eat a light protein-rich meal. During the exam: if panic rises, exhale slowly for 8 counts — this directly lowers heart rate. Read all questions first, answer easiest ones first to build confidence. Time-box: if stuck for 3+ minutes, move on.',
 'Write your worries on a piece of paper before the exam for 10 minutes — research shows this "offloads" anxious thoughts and improves performance.',
 'exam,anxiety,pressure,study,test,performance',
 'BEGINNER', 'HIGH', 4);

-- ═══════════════════════════════════════════════════════════════════════
-- PERSONAL CONFLICTS (category_id = 5)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I set boundaries with people who keep crossing them?',
 'Setting boundaries feels difficult because most of us were not taught how — and because there is a fear of rejection or conflict. A boundary is not a wall; it is a clear communication of what you will and will not accept. The formula is: State the boundary + Why it matters to you + Consequence. Example: "When you call after 9pm, I feel disrespected because I need wind-down time. If it continues, I won''t answer." The consequence must be something you will actually follow through on — empty threats destroy boundaries. Initially, people who previously crossed boundaries will push back harder (the "extinction burst"). Consistency is everything: enforce the boundary every single time. Self-compassion reminder: stating a boundary is not selfish — it is honest communication that makes relationships sustainable.',
 'Practice boundaries in low-stakes situations first (e.g., declining an invitation from a casual acquaintance) to build the "boundary muscle."',
 'boundaries,conflict,relationships,self-respect,communication,assertiveness',
 'INTERMEDIATE', 'HIGH', 5),

('How do I handle a conflict with a close friend without damaging the friendship?',
 'Conflict in close friendships is inevitable and healthy — avoided conflict actually erodes trust over time. Approach the conversation with curiosity rather than accusation. Use the XYZ format: "When you did X in situation Y, I felt Z." This is specific, non-blaming and emotionally honest. Choose the right time: not via text (tone is lost), not when either party is angry or tired. Begin by affirming the friendship: "This friendship matters to me, which is why I want to talk about something that hurt me." Listen to understand, not to respond — reflect back what you heard before sharing your perspective. Aim for understanding, not winning. Some conflicts resolve best with time and space; not every argument needs an immediate resolution. Repair efforts (a joke, a touch, an apology) matter more than being right.',
 'The "soft startup" research from Dr. John Gottman shows how you begin a difficult conversation predicts 96% of how it will end.',
 'friendship,conflict,communication,resolution,trust,relationship',
 'INTERMEDIATE', 'MEDIUM', 5),

('How do I deal with a toxic family member I cannot avoid?',
 'Toxic family dynamics are among the most painful because you did not choose the relationship. Key strategies: (1) Identify the pattern — is this person critical, manipulative, dismissive? Naming the dynamic reduces its power. (2) Manage exposure: limit time together, have exit strategies ("I have to leave by 7pm"), and never attend events alone if you can bring a support person. (3) Create emotional distance while staying physically present — "grey rocking" (being as boring and non-reactive as possible) removes the emotional reward toxic people seek. (4) Protect your mental space after interactions: allow yourself to decompress with a walk, journaling, or calling a supportive friend. (5) Therapy is incredibly valuable for family-of-origin issues — you deserve a safe space to process. (6) In extreme cases, limited or no contact is a legitimate option.',
 'Prepare stock phrases in advance: "I hear you," "Let''s not go there today," "I love you and I''m changing the subject." Having scripts reduces panic.',
 'toxic,family,conflict,boundaries,manipulation,mental health',
 'ADVANCED', 'HIGH', 5),

('How do I resolve conflict with myself — feeling torn between two decisions?',
 'Internal conflict (being genuinely torn between two choices) is a sign of complex values, not weakness. First, clarify what each option represents to you at a deeper level — "Job A" might represent security, while "Job B" represents freedom. When you identify the deeper values, the conflict becomes clearer. Decision-making tools: (1) The 10/10/10 method (Suzy Welch) — how will you feel about this decision in 10 minutes, 10 months, 10 years? (2) Write a "letter from your future self" — imagine you are 80 looking back; which choice do you regret not taking? (3) The "Regret Minimisation Framework" (Jeff Bezos) — which choice minimises future regret? For values conflicts, recognise that both desires are valid; some decisions are between two good things, not right versus wrong.',
 'Flip a coin — not to let chance decide, but to observe your emotional reaction to the result. Your gut often knows before your mind does.',
 'decision,internal conflict,values,choice,dilemma,self-awareness',
 'INTERMEDIATE', 'MEDIUM', 5);

-- ═══════════════════════════════════════════════════════════════════════
-- RELATIONSHIPS (category_id = 6)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I communicate better with my partner during arguments?',
 'Relationship arguments go wrong when both people slip into "fight or flight" mode — you stop listening and start defending. Dr. John Gottman''s research identifies the "Four Horsemen" that destroy relationships: Criticism (attacking character), Contempt (eye-rolling, sarcasm — the single biggest predictor of divorce), Defensiveness, and Stonewalling. The antidotes: replace Criticism with "I" statements, counter Contempt with a culture of appreciation, replace Defensiveness with accountability, prevent Stonewalling by taking 20-minute breaks (it takes 20 minutes for physiological arousal to calm down). Use "softened startup" — how you start the conversation determines how it goes. Call a "time out" before either party reaches peak emotional flooding (internal heart rate above 100bpm severely impairs rational thinking).',
 'The "magic ratio" for healthy relationships is 5 positive interactions for every 1 negative. Consciously add micro-positives daily: compliments, touches, thanks.',
 'relationships,communication,arguments,Gottman,conflict,couple',
 'INTERMEDIATE', 'HIGH', 6),

('How do I rebuild trust after it has been broken in a relationship?',
 'Trust rebuilding is a slow, nonlinear process — it cannot be rushed or demanded. For the person who broke trust: (1) Full accountability — no "but," no minimising. "I did X. It was wrong. I understand why it hurt you." (2) Transparency — offer information proactively rather than waiting to be asked. (3) Consistent actions over time — trust is rebuilt in tiny deposits, not grand gestures. (4) Patience — the betrayed person will have setback days; don''t interpret their pain as unwillingness to move forward. For the person who was hurt: (1) Communicate specifically what you need to feel safe. (2) Decide genuinely whether trust is possible — staying in resentment without working toward repair serves neither person. (3) Give yourself permission to take as long as you need. Couples therapy dramatically accelerates this process with a structured framework.',
 'Dr. Brene Brown: "Trust is built in the small moments, not the grand ones." Focus on the small.',
 'trust,relationship,betrayal,repair,communication,couple',
 'ADVANCED', 'HIGH', 6),

('How do I know if a relationship is healthy or unhealthy for me?',
 'A healthy relationship should feel like a safe base from which both people can thrive — not like a place where you constantly manage someone''s emotions or shrink yourself. Green flags: you feel safe being imperfect, disagreements lead to resolution not punishment, you have your own identity outside the relationship, your energy is generally increased after spending time together, both people take responsibility for mistakes. Red flags to take seriously: you feel like you are "walking on eggshells," criticism is frequent and personal (attacks who you are, not what you did), your outside friendships and interests are being isolated or criticised, you feel worse about yourself than before the relationship began, there is any form of physical, emotional or financial control or abuse. One useful test: Can you say no to this person without fear?',
 'Write a list of 5 ways this relationship brings out the best in you and 5 ways it doesn''t. Seeing it on paper brings clarity.',
 'healthy relationship,red flags,green flags,abuse,self-worth,assessment',
 'BEGINNER', 'HIGH', 6),

('How do I maintain long-distance relationships?',
 'Long-distance relationships (LDRs) can be strong when both partners are intentional. The research shows distance itself is not the main predictor of failure — lack of plan and lack of trust are. Strategies that work: (1) Ritualise connection — a morning text, a nightly call, a weekly video "date night" with a shared activity (cooking together over video, watching the same show simultaneously). Rituals create reliability. (2) Have a timeline — knowing when you will be together reduces anxiety dramatically; open-ended distance is much harder. (3) Visit regularly and use time together wisely — mix novelty (new experiences) with normality (errands together). (4) Communicate the small things — LDRs suffer when only big news gets shared; the mundane details ("I saw a funny dog today") maintain intimacy. (5) Have individual lives — dependency on the distant partner for all emotional needs is unsustainable.',
 'Send surprise physical mail — a card, local snack, or small gift. Physical objects in an LDR have an outsized emotional impact.',
 'long distance,LDR,relationship,communication,trust,distance',
 'INTERMEDIATE', 'MEDIUM', 6);

-- ═══════════════════════════════════════════════════════════════════════
-- MENTAL HEALTH (category_id = 7)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I know when I should seek professional mental health help?',
 'The stigma around therapy prevents many people from getting help that could transform their lives. Consider professional support when: (1) Emotional difficulties are persistent — lasting more than 2 weeks and affecting daily functioning. (2) You are using coping mechanisms that harm you (alcohol, overeating, isolating). (3) Relationships are suffering — work, friendships, family are being negatively affected. (4) You are having thoughts of self-harm or feel hopeless. (5) You have tried self-help strategies for 4+ weeks without improvement. You do not need to be in crisis to benefit from therapy — many people use it for growth, clarity, and navigating normal life transitions. Types of therapy: CBT (Cognitive Behavioural Therapy) is best-evidenced for anxiety/depression; DBT for emotional regulation; psychodynamic for deeper patterns.',
 'Think of therapy as mental gym — you don''t wait until you are dangerously unfit to exercise. Prevention is more valuable than crisis intervention.',
 'therapy,mental health,help,depression,anxiety,CBT,professional',
 'BEGINNER', 'HIGH', 7),

('How do I build emotional resilience for hard times?',
 'Resilience is not about never struggling — it is about recovering faster and growing through difficulty. It is a trainable skill, not a personality trait. Core resilience practices: (1) Meaning-making — people who find or create meaning in difficult events recover faster (Viktor Frankl). Ask: "What can this experience teach me or give me?" (2) Social connection — resilient people consistently lean on others; isolation dramatically worsens adversity. (3) Self-compassion (Kristin Neff''s research) — treating yourself as you would a struggling friend accelerates recovery, while self-criticism slows it. (4) Cognitive reappraisal — notice the story you are telling about events and test whether alternative interpretations exist. (5) Physical foundations — consistent sleep, exercise and nutrition have enormous impacts on emotional regulation. (6) Build positive emotions daily — they literally expand your thinking and buffer against stress (Broaden-and-Build theory, Barbara Fredrickson).',
 'Keep a "resilience evidence file" — a document of past hard things you survived. Reading it during hard times is powerfully stabilising.',
 'resilience,mental health,hard times,recovery,strength,coping',
 'INTERMEDIATE', 'MEDIUM', 7),

('How do I support a friend who is going through depression?',
 'Supporting someone with depression requires patience, consistency and an understanding that depression distorts thinking — your friend is not choosing to be this way. Do''s: Reach out consistently even when they don''t respond (depression causes withdrawal; the absence of contact confirms the depressed brain''s belief that they are a burden). Say "I''m here for you no matter what" — not "let me know if you need anything" (depression makes asking for help impossible). Offer specific help: "I''m going to leave groceries outside your door" rather than "Do you need anything?" Listen without trying to fix. Share your genuine concern: "I''ve noticed you seem down and I care about you." Don''ts: Don''t say "just think positive," "you have so much to be grateful for," or "push through it." Don''t project timelines. If you are concerned about their safety, ask directly: "Are you having thoughts of hurting yourself?" — this does not plant the idea.',
 'Check on yourself too — supporting someone through depression can be emotionally draining. Your well-being matters.',
 'depression,support,friend,mental health,listening,care',
 'INTERMEDIATE', 'HIGH', 7);

-- ═══════════════════════════════════════════════════════════════════════
-- CAREER & WORK (category_id = 8)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I deal with a difficult boss at work?',
 'A difficult boss is one of the top reasons people quit jobs — but understanding their behaviour changes your response. First, diagnose the type: (1) Micromanager — needs control due to anxiety; proactively over-communicate progress and they will back off. (2) Disorganised/unclear — give yourself clear expectations in writing ("Following our conversation, I understand my priorities are X and Y — please let me know if that changes") and follow up. (3) Aggressive/unreasonable — document everything in writing, understand your company''s HR policies, and build allies. For all types: schedule regular 1-on-1s to manage communication proactively. Seek to understand their pressures — what does your boss''s boss pressure them about? Adapt your communication to their style. If the environment is genuinely toxic (harassment, discrimination, or psychological abuse), document incidents and consult HR or an employment lawyer.',
 'The "managing up" principle: adapt YOUR communication style to your manager''s preferences, not the other way around. Find what they value most and deliver it.',
 'boss,workplace,difficult,manager,communication,career',
 'INTERMEDIATE', 'HIGH', 8),

('How do I negotiate a salary raise effectively?',
 'Most people leave significant money on the table by not negotiating — employers expect negotiation. Preparation is everything: (1) Research — gather market data (Glassdoor, LinkedIn Salary, industry reports) for your exact role, location, and experience level. (2) Build your case — list your specific, quantified achievements (increased sales by 20%, reduced process time by X hours, managed Y budget). (3) Time it right — after a win, during performance review, or when you receive an offer (not when the company is in crisis). The conversation: start with appreciation, then state your case: "Based on my contributions and market research showing the range for this role is X–Y, I would like to discuss bringing my salary to [specific number]." Always make the first offer (it anchors negotiations), and make it slightly above your target. Don''t accept or reject on the spot — "I''d like to consider this" is always appropriate.',
 'Practice the negotiation out loud with a friend. Nervousness decreases dramatically with rehearsal and your ask sounds confident, not desperate.',
 'salary,negotiation,raise,career,money,compensation',
 'INTERMEDIATE', 'MEDIUM', 8),

('How do I change careers without starting from scratch?',
 'Career transitions feel overwhelming because people underestimate how many skills transfer. Start with a skills audit: list everything you have done and break it into transferable skills (communication, project management, analysis, leadership, customer focus, problem-solving). Most of these apply across industries. Research target careers: informational interviews (30-minute conversations with people already in the role you want) are the single most underused career transition tool — ask about day-to-day reality, entry paths, valued skills. Find the bridge role — a position that uses your current skills but in the new industry or function. Build public evidence of your new direction: a portfolio, a certification, a side project, writing online. Expect 6–18 months for a significant transition; it is a long game. Reframe "starting over" — you are starting with 20 years of wisdom.',
 'LinkedIn: Set profile to "Open to Work" for recruiters only. Reach out to 5 people per week for informational interviews. Volume matters.',
 'career change,transition,skills,networking,interview,job search',
 'ADVANCED', 'MEDIUM', 8);

-- ═══════════════════════════════════════════════════════════════════════
-- HEALTH & WELLNESS (category_id = 9)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I build a sustainable exercise habit when I keep quitting?',
 'Most exercise attempts fail because people start too hard, too fast — going from zero to 5 gym sessions per week is a setup for burnout. BJ Fogg''s Tiny Habits framework: start so small it feels ridiculous. "I will do 2 push-ups after I get out of bed." Then scale. Motivation follows action — it does not precede it. Identity-based habit formation (James Clear) is more powerful than goal-based: instead of "I want to lose weight," become "I am someone who moves every day." Find movement you actually enjoy — exercise does not have to be the gym. Dance, swimming, martial arts, hiking, sports, yoga all count. "Temptation bundle" it: only watch your favourite show while walking on treadmill. Commit publicly, track with an app, and schedule specific sessions in your calendar like meetings.',
 'Research shows working out with a friend increases consistency by 200%. Find your exercise buddy this week.',
 'exercise,fitness,habit,motivation,health,consistency',
 'BEGINNER', 'MEDIUM', 9),

('How do I improve my sleep quality when I struggle to sleep?',
 'Poor sleep is an epidemic linked to almost every major health and mental health condition. The evidence-based approach: (1) Consistent wake time — the single most powerful sleep intervention. Get up the same time every day regardless of when you slept. This regulates your circadian rhythm within 2 weeks. (2) Reduce sleep pressure — if you cannot sleep in 20 minutes, get up and do something calm (read, meditate — not screens) until sleepy. This prevents bed-anxiety association. (3) Light: get bright light (ideally sunlight) within 30 minutes of waking; avoid blue light for 1 hour before bed or use blue-light glasses. (4) Temperature: keep your bedroom cool (16–19°C/60–67°F) — body temperature must drop 2°F to initiate sleep. (5) Caffeine: half-life is 5–7 hours — a 3pm coffee means 50% is still in your system at 9pm. Cut off by 2pm. (6) Alcohol disrupts REM sleep dramatically even if it helps you fall asleep.',
 'Try the military sleep method: relax face muscles, drop shoulders, exhale chest, relax legs, then visualise a calm scene for 10 seconds. 96% effective in 6 weeks.',
 'sleep,insomnia,rest,circadian,health,quality',
 'BEGINNER', 'HIGH', 9),

('How do I eat healthily on a tight budget?',
 'Healthy eating on a budget requires planning over impulse. Core principles: (1) Eat real food, not health food — oats, lentils, eggs, bananas, frozen vegetables, canned beans, and rice are among the most nutrient-dense and cheapest foods on earth. Nutrition does not require premium products. (2) Protein strategy — legumes (lentils, chickpeas, beans) are 5x cheaper per gram of protein than meat and have outstanding health benefits. (3) Cook in bulk — one large cooking session (dal, rice, roasted vegetables, boiled eggs) lasts 4–5 days. (4) Reduce food waste — it is estimated 30–40% of purchased food goes to waste. First In First Out in the fridge, use vegetable scraps for stock, freeze what you won''t use. (5) Shop with a list and never hungry. (6) Seasonal and local produce is almost always cheaper and more nutritious than imported out-of-season items.',
 'The dal-rice-sabzi combination is one of the most complete and affordable meals in the world — nutritionally balanced and under ₹30 per meal.',
 'budget,healthy eating,nutrition,food,meal prep,affordable',
 'BEGINNER', 'MEDIUM', 9);

-- ═══════════════════════════════════════════════════════════════════════
-- PRODUCTIVITY (category_id = 10)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I stop getting distracted by my phone while working?',
 'Smartphones are engineered by teams of thousands to capture your attention — willpower alone is insufficient. Environmental design is far more effective. (1) Physical distance — research shows having your phone in a different room (not just face-down on desk) improves cognitive capacity by 20%. (2) App management — delete social media apps from your phone and access them only via browser on desktop. Adding friction reduces impulse use dramatically. (3) Turn off all notifications except critical ones — the average person loses 23 minutes of focus each time they are interrupted. (4) Use app blockers during work blocks: Freedom, Cold Turkey, or Forest (which grows a virtual tree that dies if you leave). (5) Phone stack rule in meetings and meals — everyone stacks phones face-down; first to touch theirs pays for coffee/tea. (6) Designate specific phone times — three 10-minute windows per day rather than constant low-level checking.',
 'Try "phone-free mornings" — don''t check your phone for the first 60 minutes after waking. Game-changing for mental clarity.',
 'phone,distraction,focus,productivity,social media,attention',
 'BEGINNER', 'MEDIUM', 10),

('How do I get into a state of deep focus or flow?',
 'Flow state (Mihaly Csikszentmihalyi) is optimal experience — complete absorption in a task. It requires: the task must match your skill level precisely (too easy = boredom, too hard = anxiety). Create flow conditions: (1) Single task — multitasking destroys flow. Close extra browser tabs, silence all notifications. (2) Environment — choose or design a workspace associated with focus; music can help (instrumental, brown noise, or binaural beats at 40Hz have evidence). (3) Body primed — flow is harder when tired, hungry or sedentary. A 10-minute walk before a deep work session significantly improves cognitive performance. (4) Entry ritual — a 5-minute pre-work ritual (specific music, making tea, reviewing your intention for the session) trains your brain to shift into focus mode. (5) Protect the first 90 minutes of your day for your most cognitively demanding task — willpower and focus peak in the morning for most people.',
 'Deep Work by Cal Newport is the definitive book on this. Schedule "deep work blocks" as calendar appointments and treat them as sacred.',
 'flow,focus,deep work,productivity,concentration,mindset',
 'ADVANCED', 'MEDIUM', 10);

-- ═══════════════════════════════════════════════════════════════════════
-- PARENTING (category_id = 11)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I discipline my child without yelling or harsh punishment?',
 'Authoritative parenting (warm + structured) is the most research-supported approach — not permissive (warm, no structure) or authoritarian (harsh, cold). The goal of discipline is to teach, not punish. Key techniques: (1) Natural consequences — if a child won''t wear a coat, they feel cold. Experiencing real consequences teaches more than lectures. (2) Logical consequences — tied to the behaviour: misuse of screen time means screen time is paused. (3) Positive reinforcement — catch your child being good and name it specifically: "I noticed you shared your toy with your sister. That was very kind." Specific praise is 5x more effective than general praise. (4) When you feel yourself about to yell, lower your voice to a near-whisper — it''s counterintuitively more attention-grabbing and defuses your own adrenaline. (5) Give choices within limits: "Would you like to clean up now or in 5 minutes?" Control reduces power struggles dramatically.',
 '"Connect before you correct" — a hug or brief positive moment before a difficult conversation makes children far more receptive.',
 'parenting,discipline,children,behaviour,positive parenting,communication',
 'INTERMEDIATE', 'MEDIUM', 11),

('How do I talk to my teenager about sensitive topics?',
 'Teenagers are simultaneously seeking independence and craving parental connection — the paradox makes communication feel impossible. What works: (1) Side-by-side conversations — teens open up more while doing an activity together (driving, cooking, walking) than in face-to-face "serious talks." Reduce the performance pressure. (2) Ask open questions and then wait — silence is fine; don''t fill it. "What do you think about...?" rather than "Do you understand why...?" (3) Validate before advising — "That sounds really hard" before "here''s what you should do." Feeling heard makes teens 3x more likely to accept guidance. (4) Share your own adolescent struggles (age-appropriately) — it normalises their experience and makes you more relatable. (5) Know when to consult professionals — persistent withdrawal, grades dropping, changed friend groups, or mood changes lasting more than 2 weeks deserve professional assessment. (6) Keep the door open: "You can always come to me, no matter what — I won''t overreact."',
 'The phrase "I''m not going to get angry, I just want to understand" is remarkably effective with teenagers who fear parental reaction.',
 'teenager,communication,parenting,sensitive topics,trust,adolescence',
 'INTERMEDIATE', 'HIGH', 11);

-- ═══════════════════════════════════════════════════════════════════════
-- SELF-CONFIDENCE (category_id = 12)
-- ═══════════════════════════════════════════════════════════════════════
INSERT INTO life_advice (question, answer, tips, tags, difficulty, urgency_level, category_id) VALUES
('How do I overcome imposter syndrome at work?',
 'Imposter syndrome — the persistent belief that you are a fraud who will be "found out" despite evidence of competence — affects approximately 70% of people, including the highly successful (Maya Angelou, Albert Einstein and Neil Armstrong have all described it). It is fuelled by competence-awareness paradox: the more you learn about a field, the more you become aware of what you don''t know. Strategies: (1) Keep an "evidence file" — document every achievement, positive feedback and success. When imposter thoughts arise, open the file. (2) Normalise the feeling — name it: "That''s my imposter syndrome speaking, not reality." Naming reduces its power. (3) Reframe from "I don''t deserve to be here" to "I''m learning, and that''s appropriate." (4) Separate feelings from facts — feeling like a fraud is not evidence of fraud. (5) Talk to trusted peers — discovering others feel the same is deeply relieving. (6) Accept that discomfort is the sign of growth, not incompetence.',
 'Research shows high-achieving women experience imposter syndrome more intensely due to systemic underrepresentation. This is social, not personal.',
 'imposter syndrome,confidence,work,self-doubt,achievement,success',
 'INTERMEDIATE', 'MEDIUM', 12),

('How do I build self-confidence after failure or rejection?',
 'Failure and rejection are the most reliable teachers — but they first need to be processed, not bypassed. Step 1: Allow the feeling. Suppressing disappointment prolongs it. Give yourself 24–48 hours to feel bad without self-judgment. Step 2: Extract the learning. What specifically can be improved? What was genuinely outside your control? Writing this down separates valuable insight from self-punishment. Step 3: Separate identity from outcome. "I failed at this attempt" is vastly different from "I am a failure." The first is a fact; the second is a fiction. Step 4: Build a success ladder — set and complete a series of progressively harder goals. Each success neurologically strengthens the self-efficacy belief "I can do hard things." Step 5: Surround yourself with people who see your potential during your own low-visibility moments. Step 6: Act confident before you feel it — research by Amy Cuddy and others shows body language and behaviour shape internal state, not just reflect it.',
 'Write yourself a compassionate letter as if from a wise, caring mentor who knows everything about you. This externalisation is clinically powerful.',
 'confidence,failure,rejection,self-esteem,growth,resilience',
 'INTERMEDIATE', 'HIGH', 12);
