import 'package:website/export.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Style.white,
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 24),
          Text(
            'Frequently Asked\nQuestions',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Style.secondaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Here\'s what some of our customers say about our\nplatform. Here\'s what some of our customers say about\nour platform.',
            textAlign: TextAlign.center,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(color: Style.secondaryColor),
          ),
          const SizedBox(height: 24),
          ListQuestions(),
        ],
      ),
    );
    ;
  }
}

class ListQuestions extends StatelessWidget {
  const ListQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: questions.length,
      itemBuilder: (context, index) {
        final query = MediaQuery.of(context);
        return Column(
          children: [
            for (var item in questions)
              for (var data in item.entries)
                Container(
                  margin: .symmetric(
                    horizontal: query.size.width * 0.2,
                    vertical: query.size.height * 0.01,
                  ),
                  child: ExpansionTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text(
                      data.key,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Style.secondaryColor,
                      ),
                    ),
                    expandedAlignment: Alignment.topLeft,
                    splashColor: Colors.transparent,
                    showTrailingIcon: true,
                    maintainState: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 30,
                        ),
                        child: Text(
                          data.value,
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(color: Style.secondaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        );
      },
    );
  }
}
