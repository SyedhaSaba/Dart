void main(){
  List<String> fruits = [];
  fruits.add('Apple');
  fruits.add('Mango');
  fruits.add('Banana');
  fruits.add('Orange');
  print(fruits);

  fruits.fillRange(1,4,'Cheery');
  print(fruits);
   
  fruits.insert(0,'abc');
  print(fruits);

 fruits.lastIndexOf('Cheery');
 print(fruits);

fruits.remove('Cheery');
print(fruits);

fruits.removeRange(2,4);
print(fruits);
List<String> updateFruit =['Date','orange','xyz','Mango','Apple'];
fruits.addAll(updateFruit);
print(updateFruit);

updateFruit.sort();
print(updateFruit);

List<int> numbers = [-1,-2,-3,0,1,2,3,4];
numbers.retainWhere((e) => e > 0);
print(numbers);

List<String> updateFruits =['Date','orange','xyz','Mango','Apple'];

updateFruits.retainWhere((updateFruits)=>updateFruits.startsWith('o'));
print(updateFruits);

List<String> update =['orange','xyz','Mango','Apple'];

update.removeWhere((update)=>update.startsWith('A'));
print(update);

}