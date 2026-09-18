void main(){
  // Set<String>names = {"hari", "sita"};
  // Set<String> names2 = {"rohan", "kailash"};

Map<String, String> capital1 = {
  "nepal": "ktm",
  "india": "delhi",
};

Map<String, String> capital2 = {
  "china": "bejing",
  "pakistan": "islabad",
};

capital1.addAll(capital2);


Map<String, dynamic> person = {
  "name": "Naresh",
  "age": 25,
  "isStudent": true,
  "skills": ["Dart", "Java", "NestJS"],
};
print(person);

print(capital1);

Map<String, dynamic> person2 = {
  "name": "Naresh",
  "skills": ["Dart", "Java", "NestJS"],
};

print((person2["skills"] as List)[1]);
}