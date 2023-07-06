
import 'package:flutter/material.dart';


class result extends StatelessWidget {
  final Function ResetHandler;
  final int totalScore;
  const result(this.totalScore, this.ResetHandler,{super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Та асуултаа дуусгалаа.",
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Таны авсан оноо: $totalScore",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () => ResetHandler(),
                      child: Text("Дахин эхлэх"),
                    ),
                  ],
                ),
              );
  }
}