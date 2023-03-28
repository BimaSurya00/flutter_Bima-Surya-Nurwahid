**Dialog Bottom Sheet**

**Aplikasi Task Management**

Deskripsi :

Adalah suatu aplikasi yang dapat menambahkan dan menghapus kegiatan

1. Membuat model untuk informasi yang mau disimpan, buat folder models dan di dalamnya berisi file dart baru task_model.dart

```
class TaskModel{
    final String id;
    final String taskName;

    TaskModel({
        required this.id,
        required this.taskName,
    });
}

```

2. Membuat Task Screen, buat folder screens di dalamnya buat file dart baru task_screen.dart

```
class TaskScreen extends StatelessWidget{
    const TaskScreen({key? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text('Task Management'),
                centerTitle: true,
            ),
        );
    }
}

```

3. Membuat Empty Screen, buat file dart baru empty_task_screen.dart di folder screens

```
class EmptyTaskScreen extends StatelessWidget{
    const EmptyTaskScreen({key? key}) : super(key: key);

    @override
    Widget build(BuildContext context){
        return Container(color: Colors.amber);
    }
}
```

4. Tambahkan package provider di pubspec.yaml

```
dependencies:
    flutter:
        sdk: flutter
    provider: ^6.0.2
```

5. Membuat Task Manager, buat file dart baru task_manager.dart di dalam folder models. Tambahkan method deleteTask dan addTask

```
class TaskManager extends ChangeNotifier{
    final _taskModels = <TaskModel>[];
    List<TaskModel> get taskModels => List.unmodifable(_taskModels);

    void deleteTask(int index){
        _taskModels.removeAt(index);
        notifyListeners();
    }

    void addTask(TaskModel task){
        _taskModels.add(task);
        notifyListeners();
    }
}

```

6. Menambahkan TaskManager sebagai provider

```
Widget build(BuildContext context){
    return MultiProvider(
        providers: [
            ChangeNotifierProvider(
                create: (context) => TaskManager(),
            ),
        ],

        child: const MaterialApp(
            title: 'Task Management',
            home: TaskScreen(),
        ),
    );
}

```

7. Membuat fungsi buildTaskScreen, akan me-return antara Task Screen yang ada data nya atau yang kosong dan dipanggil fungsi nya di body

```
Widget BuildTaskScreen(){
    return Consumer<TaskManager>(
        builder: (context, manager, child){
            if(manager.taskModels.isNotEmpty){
                return Container();
            } else {
                return const EmptyTaskScreen();
            }
        },
    );
}

```

8. Membuat Task Item Screen, buat file dart baru task_item_screen.dart di dalam folder screens dan tambahkan properti onCreate

```
class _TaskItemScreenState extends State<TaskItemScreen>{
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: Appbar(
                title: const Text('Create Task'),
            ),
            body: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                    children: [

                    ],
                ),
            ),
        );
    }
}


```

```
final Function(TaskModel) onCreate;
const TaskItemScreen({
    key? key,
    required this.onCreate,
}) : super(key: key);
```

9. taks_screen.dart membuat FloatingActionButton, untuk navigasi ke TaskItemScreen

```
FloatingActionButton: FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: (){
        final manager = Provider.of<TaskManager>(context, listen: false);
        Navigator.push(
            context, MaterialPageRoute(
                builder: (context) => TaskItemScreen(
                    onCreate: (task){
                        manager.addTask(task);
                        Navigator.pop(context);
                    },
                ),
            ),
        );
    },
),

```

**Alert Dialog**

Deskripsi:

* Untuk tampilan android, dari material design
* Menginformasikan pengguna tentang situasi tertentu
* Bisa digunakan untuk mendapatkan input dari user
* Membutuhkan helper method showDialog

Cara Membuat AlertDialog

1. Menambahkan AlertDialog

2. Memanggil fungsi showDialog di dalam fungsi onPressed pada iconButton

3. showDialog membutuhkan context dan builder

4. Di builder nya akan me return AlertDialog

```
onPressed: (){
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            content: const Text('Are you sure?')
            actions: [
                TextButton(
                    onPressed: (){
                        Navigator.pop(context);
                    }
                    child: const Text('No'),
                ),
                TextButton(
                    onPressed: onPressed,
                    child: const Text('Yes')
                ),
            ],
        ),
    );
}

```

**Bottom Sheet**

Deskripsi 

* Seperti dialog tetapi muncul dari bawah layar aplikasi

* Menggunakan fungsi bawaan flutter showModalBottomSheet

* Membutuhkan dua properti, yaitu context dan builder

Membuat Bottom Sheet

```
actions: [
    IconButton(
        onPressed: (){
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                    ),
                ),
                context: context,
                builder: (context) => Container(),
            );
        },
        icon: const Icon(Icons.account_circle),
    ),
],

```

