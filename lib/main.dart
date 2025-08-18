import 'dart:math';
import 'package:flutter/material.dart';
import 'cases.dart' as pharma; // Prefix for pharmacology import
import 'cases2.dart' as clinical; // Prefix for clinical pharmacy import

void main() {
  runApp(const FloatingCaseApp());
}

class FloatingCaseApp extends StatelessWidget {
  const FloatingCaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'امسيكيو عل طاير',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        colorScheme: ThemeData.dark().colorScheme.copyWith(
              primary: Colors.greenAccent,
              secondary: Colors.greenAccent,
            ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: Colors.greenAccent,
          ),
        ),
      ),
      home: const SubjectSelectionScreen(),
    );
  }
}

class SubjectSelectionScreen extends StatelessWidget {
  const SubjectSelectionScreen({super.key});

  Widget _buildSubjectCard(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      color: const Color(0xFF0C0F0C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
      ),
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.greenAccent, size: 48),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withAlpha(242),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Directionality(
          textDirection: TextDirection.rtl,
          child: Text('اختر المادة'),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(child: FloatingBubbles(count: 22)),
          Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      _buildSubjectCard(
                        context,
                        'Pharmacology | علم الأدوية',
                        Icons.medical_services,
                        () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => PharmacologyCategoryScreen(
                                caseList: pharma.pharmacologyCaseList,
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      _buildSubjectCard(
                        context,
                        'Clinical Phmarmacy | سريرية',
                        Icons.person,
                        () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => ClinicalCategoryScreen(
                                caseList: clinical.clinicalCaseList,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PharmacologyCategoryScreen extends StatelessWidget {
  final List<pharma.CaseItem> caseList;
  
  const PharmacologyCategoryScreen({super.key, required this.caseList});

  IconData _getIconForCategory(pharma.PharmacologyCategory category) {
    switch (category) {
      case pharma.PharmacologyCategory.nsaids: return Icons.medication;
      case pharma.PharmacologyCategory.rheumatology: return Icons.accessibility;
      case pharma.PharmacologyCategory.bone: return Icons.accessible;
      case pharma.PharmacologyCategory.diabetes: return Icons.monitor_heart;
      case pharma.PharmacologyCategory.cancer: return Icons.healing;
      case pharma.PharmacologyCategory.hormones: return Icons.health_and_safety;
      case pharma.PharmacologyCategory.miscellaneous: return Icons.help_outline;
    }
  }

  Widget _buildCategoryCard(BuildContext context, pharma.PharmacologyCategory category) {
    final questionCount = caseList.where((c) => c.categories.contains(category)).length;
    
    return Card(
      color: const Color(0xFF0C0F0C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          final filteredCases = caseList.where((c) => c.categories.contains(category)).toList();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FloatingCaseHome(
                title: category.displayName,
                caseList: filteredCases,
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(_getIconForCategory(category)),
              const SizedBox(height: 12),
              Text(
                category.displayName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withAlpha(242),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '$questionCount أسئلة',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAllCategoriesCard(BuildContext context) {
    return Card(
      color: const Color(0xFF0C0F0C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FloatingCaseHome(
                title: 'كل فصول علم الأدوية',
                caseList: caseList,
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.all_inclusive, color: Colors.greenAccent, size: 32),
              const SizedBox(width: 12),
              Text(
                'كل الأسئلة',
                style: TextStyle(
                  color: Colors.white.withAlpha(242),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Directionality(
          textDirection: TextDirection.rtl,
          child: Text('اختر الفصل في علم الأدوية'),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(child: FloatingBubbles(count: 22)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.9,
                children: [
                  for (final category in pharma.PharmacologyCategory.values)
                    _buildCategoryCard(context, category),
                  _buildAllCategoriesCard(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClinicalCategoryScreen extends StatelessWidget {
  final List<clinical.CaseItem> caseList;
  
  const ClinicalCategoryScreen({super.key, required this.caseList});

  IconData _getIconForCategory(clinical.ClinicalCategory category) {
    switch (category) {
      case clinical.ClinicalCategory.cardiovascular: return Icons.favorite;
      case clinical.ClinicalCategory.endocrine: return Icons.monitor_heart;
      case clinical.ClinicalCategory.respiratory: return Icons.air;
      case clinical.ClinicalCategory.boneJoint: return Icons.accessible;
      case clinical.ClinicalCategory.infectious: return Icons.coronavirus;
      case clinical.ClinicalCategory.gi: return Icons.fastfood;
      case clinical.ClinicalCategory.hematologic: return Icons.water_drop;
      case clinical.ClinicalCategory.miscellaneous: return Icons.help_outline;
    }
  }

  Widget _buildCategoryCard(BuildContext context, clinical.ClinicalCategory category) {
    final questionCount = caseList.where((c) => c.categories.contains(category)).length;
    
    return Card(
      color: const Color(0xFF0C0F0C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          final filteredCases = caseList.where((c) => c.categories.contains(category)).toList();
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FloatingCaseHome(
                title: category.displayName,
                caseList: filteredCases,
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(_getIconForCategory(category)),
              const SizedBox(height: 12),
              Text(
                category.displayName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withAlpha(242),
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '$questionCount أسئلة',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAllCategoriesCard(BuildContext context) {
    return Card(
      color: const Color(0xFF0C0F0C),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
      ),
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => FloatingCaseHome(
                title: 'كل فصول الصيدلة السريرية',
                caseList: caseList,
              ),
            ),
          );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.all_inclusive, color: Colors.greenAccent, size: 32),
              const SizedBox(width: 12),
              Text(
                'كل الأسئلة',
                style: TextStyle(
                  color: Colors.white.withAlpha(242),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Directionality(
          textDirection: TextDirection.rtl,
          child: Text('اختر الفصل في الصيدلة السريرية'),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(child: FloatingBubbles(count: 22)),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.9,
                children: [
                  for (final category in clinical.ClinicalCategory.values)
                    _buildCategoryCard(context, category),
                  _buildAllCategoriesCard(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FloatingCaseHome extends StatefulWidget {
  final String title;
  final List<dynamic> caseList;

  const FloatingCaseHome({super.key, required this.title, required this.caseList});

  @override
  State<FloatingCaseHome> createState() => _FloatingCaseHomeState();
}

class _FloatingCaseHomeState extends State<FloatingCaseHome> with SingleTickerProviderStateMixin {
  final _rand = Random();
  dynamic _current;
  int? _selectedIndex;
  bool _answered = false;
  bool _isReview = false;
  late Set<int> _remainingIds;
  final List<SolvedCase> _history = [];
  bool _completedRun = false;

  @override
  void initState() {
    super.initState();
    _resetPool();
  }

  void _resetPool() {
    _remainingIds = widget.caseList.map<int>((c) => c.id).toSet();
    _history.clear();
    _completedRun = false;
    _current = null;
    _selectedIndex = null;
    _answered = false;
    _isReview = false;
    setState(() {});
  }

  dynamic _pickRandomFromRemaining() {
    if (_remainingIds.isEmpty) return null;
    final ids = _remainingIds.toList();
    final id = ids[_rand.nextInt(ids.length)];
    return widget.caseList.firstWhere((c) => c.id == id);
  }

  void _showRandomCase() {
    final next = _pickRandomFromRemaining();
    if (next == null) {
      setState(() {
        _completedRun = true;
        _current = null;
      });
      return;
    }
    setState(() {
      _current = next;
      _selectedIndex = null;
      _answered = false;
      _isReview = false;
    });
  }

  void _selectAnswer(int index) {
    if (_current == null || _answered || _isReview) return;
    final isCorrect = index == _current.correctIndex;

    setState(() {
      _selectedIndex = index;
      _answered = true;

      if (_remainingIds.contains(_current.id)) {
        _remainingIds.remove(_current.id);
      }
      final already = _history.any((h) => h.item.id == _current.id);
      if (!already) {
        _history.insert(
          0,
          SolvedCase(
            item: _current,
            selectedIndex: index,
            isCorrect: isCorrect,
            time: DateTime.now(),
          ),
        );
      }
    });
  }

  void _reviewFromHistory(SolvedCase entry) {
    setState(() {
      _current = entry.item;
      _selectedIndex = entry.selectedIndex;
      _answered = true;
      _isReview = true;
      _completedRun = false;
    });
  }

  void _showHistoryDrawer(BuildContext context) {
    Scaffold.of(context).openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        final isWide = constraints.maxWidth >= 980;

        return Scaffold(
          appBar: AppBar(
            title: Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                widget.title,
                style: const TextStyle(fontSize: 18),
              ),
            ),
            actions: [
              if (!isWide)
                Builder(
                  builder: (inner) => IconButton(
                    tooltip: 'السجل',
                    onPressed: () => _showHistoryDrawer(inner),
                    icon: const Icon(Icons.history, color: Colors.greenAccent),
                  ),
                ),
            ],
          ),
          endDrawer: isWide ? null : _HistoryDrawer(history: _history, onTap: _reviewFromHistory),
          body: Stack(
            children: [
              Positioned.fill(child: FloatingBubbles(count: 22)),
              SafeArea(
                top: false,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: _buildMainContent(isWide: isWide),
                      ),
                    ),
                    if (isWide)
                      SizedBox(
                        width: 340,
                        child: _HistoryPanel(
                          history: _history,
                          onTap: _reviewFromHistory,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMainContent({required bool isWide}) {
    if (_completedRun) {
      return _buildCompletionCard();
    }
    if (_current == null) {
      return _buildStartCard();
    }
    return _buildCaseCard(_current);
  }

  Widget _buildStartCard() {
    return Center(
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Card(
              color: const Color(0xFF0C0F0C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.play_circle_fill, color: Colors.greenAccent, size: 56),
                    const SizedBox(height: 12),
                    Text(
                      'يلة نبدي',
                      style: TextStyle(
                        color: Colors.white.withAlpha(242),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'دوس حتى تعرض سؤال عشوائي.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 14.5),
                    ),
                    const SizedBox(height: 16),
                    FilledButton.icon(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.greenAccent.withAlpha(38),
                        foregroundColor: Colors.greenAccent,
                      ),
                      onPressed: _showRandomCase,
                      icon: const Icon(Icons.casino),
                      label: const Text('عرض حالة'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCompletionCard() {
    return Center(
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 680),
            child: Card(
              color: const Color(0xFF0C0F0C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 22, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.emoji_events, color: Colors.greenAccent, size: 56),
                    const SizedBox(height: 12),
                    Text(
                      'عفية سجاج👏, خلصت كل الأسئلة',
                      style: TextStyle(
                        color: Colors.white.withAlpha(242),
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'تريد تبدا من جديد؟',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 14.5),
                    ),
                    const SizedBox(height: 16),
                    FilledButton.icon(
                      style: FilledButton.styleFrom(
                        backgroundColor: Colors.greenAccent.withAlpha(38),
                        foregroundColor: Colors.greenAccent,
                      ),
                      onPressed: _resetPool,
                      icon: const Icon(Icons.refresh),
                      label: const Text(' أبدا من جديد'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCaseCard(dynamic caseItem) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Card(
            color: const Color(0xFF0C0F0C),
            elevation: 4,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.greenAccent.withAlpha(64)),
              borderRadius: BorderRadius.circular(16),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.help_outline, color: Colors.greenAccent),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          caseItem.question,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ...List.generate(caseItem.options.length, (i) {
                    final isCorrect = i == caseItem.correctIndex;
                    final isSelected = i == _selectedIndex;
                    final showState = _answered;
                    Color border;
                    Color fill;
                    IconData? icon;

                    if (showState && isCorrect) {
                      border = Colors.greenAccent;
                      fill = Colors.greenAccent.withAlpha(30);
                      icon = Icons.check_circle;
                    } else if (showState && isSelected && !isCorrect) {
                      border = Colors.redAccent;
                      fill = Colors.redAccent.withAlpha(30);
                      icon = Icons.cancel;
                    } else {
                      border = Colors.white10;
                      fill = Colors.white.withAlpha(8);
                      icon = null;
                    }

                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: border, width: 1),
                        color: fill,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: _isReview ? null : () => _selectAnswer(i),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                          child: Row(
                            children: [
                              if (icon != null)
                                Icon(icon, color: isCorrect ? Colors.greenAccent : Colors.redAccent)
                              else
                                const Icon(Icons.radio_button_unchecked, color: Colors.white38),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  caseItem.options[i],
                                  style: const TextStyle(fontSize: 16.5, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                  const SizedBox(height: 8),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: !_answered
                        ? const SizedBox.shrink()
                        : Row(
                            key: ValueKey(_answered),
                            children: [
                              Icon(
                                (_selectedIndex == caseItem.correctIndex)
                                    ? Icons.check_circle
                                    : Icons.error_outline,
                                color: (_selectedIndex == caseItem.correctIndex)
                                    ? Colors.greenAccent
                                    : Colors.redAccent,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                (_selectedIndex == caseItem.correctIndex) ? 'إجابة صحيحة!' : 'إجابة غير صحيحة',
                                style: TextStyle(
                                  color: (_selectedIndex == caseItem.correctIndex) ? Colors.greenAccent : Colors.redAccent,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              if (_isReview)
                                const Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Text(' — عرض من السجل', style: TextStyle(color: Colors.white54)),
                                ),
                            ],
                          ),
                  ),
                  const SizedBox(height: 12),
                  AnimatedCrossFade(
                    duration: const Duration(milliseconds: 250),
                    crossFadeState: _answered ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    firstChild: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'الشرح: ${caseItem.explanation}',
                        style: TextStyle(
                          color: Colors.white.withAlpha(229),
                          fontSize: 14.5,
                        ),
                      ),
                    ),
                    secondChild: const SizedBox.shrink(),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                        onPressed: _showRandomCase,
                        icon: const Icon(Icons.autorenew, color: Colors.greenAccent),
                        label: const Text('حالة أخرى', style: TextStyle(color: Colors.greenAccent)),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          setState(() { _current = null; });
                        },
                        icon: const Icon(Icons.visibility_off, color: Colors.white70),
                        label: const Text('إخفاء', style: TextStyle(color: Colors.white70)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SolvedCase {
  final dynamic item;
  final int selectedIndex;
  final bool isCorrect;
  final DateTime time;

  SolvedCase({
    required this.item,
    required this.selectedIndex,
    required this.isCorrect,
    required this.time,
  });
}

class _HistoryPanel extends StatelessWidget {
  final List<SolvedCase> history;
  final void Function(SolvedCase) onTap;

  const _HistoryPanel({required this.history, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: const Color(0xFF0B0D0B),
        padding: const EdgeInsets.fromLTRB(12, 16, 12, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: const [
              Icon(Icons.history, color: Colors.greenAccent),
              SizedBox(width: 8),
              Text('السجل', style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w700)),
            ]),
            const SizedBox(height: 8),
            Expanded(
              child: history.isEmpty
                  ? const Center(
                      child: Text(
                        'لا يوجد عناصر بعد',
                        style: TextStyle(color: Colors.white54),
                      ),
                    )
                  : ListView.separated(
                      itemCount: history.length,
                      separatorBuilder: (_, __) => Divider(color: Colors.white10),
                      itemBuilder: (context, i) {
                        final h = history[i];
                        return ListTile(
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          leading: Icon(
                            h.isCorrect ? Icons.check_circle : Icons.cancel,
                            color: h.isCorrect ? Colors.greenAccent : Colors.redAccent,
                          ),
                          title: Text(
                            h.item.question,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 14.5),
                          ),
                          subtitle: Text(
                            'جوابك: ${h.item.options[h.selectedIndex]}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(color: Colors.white60, fontSize: 12.5),
                          ),
                          trailing: const Icon(Icons.visibility, color: Colors.white54),
                          onTap: () => onTap(h),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HistoryDrawer extends StatelessWidget {
  final List<SolvedCase> history;
  final void Function(SolvedCase) onTap;

  const _HistoryDrawer({required this.history, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0B0D0B),
      child: SafeArea(
        child: _HistoryPanel(history: history, onTap: (h) {
          Navigator.of(context).maybePop();
          onTap(h);
        }),
      ),
    );
  }
}

class FloatingBubbles extends StatefulWidget {
  const FloatingBubbles({super.key, this.count = 22});
  final int count;

  @override
  State<FloatingBubbles> createState() => _FloatingBubblesState();
}

class _FloatingBubblesState extends State<FloatingBubbles> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final List<_BubbleSeed> _seeds;
  final _rand = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 18),
    )
      ..addListener(() {
        setState(() {});
      })
      ..repeat();

    _seeds = List.generate(widget.count, (i) {
      final radius = _rand.nextDouble() * 18 + 8;
      final speed = _rand.nextDouble() * 1.2 + 0.4;
      final amp = _rand.nextDouble() * 40 + 20;
      final phase = _rand.nextDouble() * pi * 2;
      final color = Colors.greenAccent.withAlpha(38 + _rand.nextInt(58));
      return _BubbleSeed(
        baseX: _rand.nextDouble(),
        baseY: _rand.nextDouble(),
        radius: radius,
        speed: speed,
        amplitude: amp,
        phase: phase,
        color: color,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final time = _controller.value * 18.0;
    return CustomPaint(
      painter: _BubblesPainter(
        time: time,
        seeds: _seeds,
      ),
    );
  }
}

class _BubbleSeed {
  final double baseX;
  final double baseY;
  final double radius;
  final double speed;
  final double amplitude;
  final double phase;
  final Color color;

  _BubbleSeed({
    required this.baseX,
    required this.baseY,
    required this.radius,
    required this.speed,
    required this.amplitude,
    required this.phase,
    required this.color,
  });
}

class _BubblesPainter extends CustomPainter {
  final double time;
  final List<_BubbleSeed> seeds;

  _BubblesPainter({required this.time, required this.seeds});

  @override
  void paint(Canvas canvas, Size size) {
    final bg = Paint()..color = Colors.black;
    canvas.drawRect(Offset.zero & size, bg);

    for (final s in seeds) {
      final cx = s.baseX * size.width + sin((time * s.speed) + s.phase) * s.amplitude;
      final cy = s.baseY * size.height + cos((time * s.speed) + s.phase) * s.amplitude;
      final bubblePaint = Paint()..color = s.color;
      canvas.drawCircle(Offset(cx, cy), s.radius, bubblePaint);
    }
  }

  @override
  bool shouldRepaint(covariant _BubblesPainter oldDelegate) {
    return oldDelegate.time != time || oldDelegate.seeds != seeds;
  }
}