class AccountCreationStep {
  final int stepId;
  final String name;
  final bool done;

  AccountCreationStep(
      {required this.stepId, required this.name, required this.done});

  factory AccountCreationStep.fromJson(Map<String, dynamic> json) {
    return AccountCreationStep(
        stepId: json['step_id'], name: json['name'], done: json['done']);
  }
}
