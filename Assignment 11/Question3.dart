void main(){
  List<String> days =['monday','tuesday','wednesday','thrusday','friday','saturday','sunday'];
    while (days.isNotEmpty) {
    String removedDay = days.removeLast();
    print('Removed: $removedDay');
  }


}