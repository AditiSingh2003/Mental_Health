import 'package:flutter/material.dart';
import 'package:menatl_health/core/theme.dart';
import 'package:menatl_health/features/meditation/presentation/widget/feeling_bubble.dart';
import 'package:menatl_health/features/meditation/presentation/widget/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome back, Aditi!",
            style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 32),
        
            Text("How are you feeling today?",
            style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeelingButton(
                  image: "assets/happy.png",
                  label: "Happy", 
                  color: DefaultColors.pink),
        
                  FeelingButton(
                    image: "assets/calm.png", 
                    label: "Calm", 
                    color: DefaultColors.purple),
        
                    FeelingButton(
                      image: "assets/relax.png", 
                      label: "Relax", 
                      color: DefaultColors.orange),
                      
                      FeelingButton(
                        image: "assets/focus.png", 
                        label: "Focus", 
                        color: DefaultColors.lightteal),
              ],
            ),
            Text(
              "Today\'s Tasks",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 16),
            TaskCard(
              text: "Morning",
              description: "Lets's open up to thing that matter amoung people",
              color: DefaultColors.task1, actionText: '',
              // actionText: "Start",
            ),
            SizedBox(height: 16),
            TaskCard(
              text: "Noon",
              description: "Lets's open up to thing that matter amoung people",
              color: DefaultColors.task2,
              actionText: '',
              // actionText: "Start",
            ),
            SizedBox(height: 16),
            TaskCard(
              text: "Evening",
              description: "Lets's open up to thing that matter amoung people",
              color: DefaultColors.task3,
              actionText: '',
              // actionText: "Start",
            ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: ,
    );
  }
}