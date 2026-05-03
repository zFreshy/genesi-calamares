/* === Genesi OS Installer Slideshow ===
 *
 *   SPDX-FileCopyrightText: 2026 Genesi OS Team
 *   SPDX-License-Identifier: GPL-3.0-or-later
 */

import QtQuick 2.15;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 8000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    // Slide 1 - Welcome
    Slide {
        Rectangle {
            anchors.fill: parent
            color: "#0a0f0d"
            
            Column {
                anchors.centerIn: parent
                spacing: 40
                
                Text {
                    text: "Welcome to Genesi OS"
                    font.pixelSize: 48
                    font.bold: true
                    color: "#00ff9f"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Text {
                    text: "The first Linux distribution optimized for Local AI"
                    font.pixelSize: 24
                    color: "#ffffff"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }
    }

    // Slide 2 - AI Mode
    Slide {
        Rectangle {
            anchors.fill: parent
            color: "#0a0f0d"
            
            Column {
                anchors.centerIn: parent
                spacing: 40
                
                Text {
                    text: "AI Mode"
                    font.pixelSize: 48
                    font.bold: true
                    color: "#00ff9f"
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                
                Text {
                    text: "Automatic optimization when running Ollama, llama.cpp, and more"
                    font.pixelSize: 20
                    color: "#ffffff"
                    anchors.horizontalCenter: parent.horizontalCenter
                    wrapMode: Text.WordWrap
                    width: parent.width * 0.8
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }
}
