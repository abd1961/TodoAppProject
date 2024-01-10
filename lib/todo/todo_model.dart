
class TodoModelClass{
 int? id;
 String? title;
 String? description;
 int? isCompleted;

 TodoModelClass(this.id, this.title, this.description, this.isCompleted);


 Map<String, dynamic> toMap() {
   return {
     'id': id,
     'title': title,
     'description': description,
     'isCompleted': isCompleted,
   };
 }

 //1 = completed and 0 = not completed

 Map<String, dynamic> toJson() {
   return {
     'id': id,
     'title': title,
     'description': description,
     'isCompleted': isCompleted,
   };
 }


}