import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class AudioService {
  constructor(private http: HttpClient) { }

  getAudioFiles() {
    return this.http.get('https://your-server.com/api/audio-files');
  }
}












import { Component, OnInit } from '@angular/core';
import { AudioService } from './audio.service';

@Component({
  selector: 'app-audio-list',
  template: `
    <div *ngFor="let audioUrl of audioUrls">
      <audio controls>
        <source [src]="audioUrl" type="audio/mpeg">
        Your browser does not support the audio element.
      </audio>
    </div>
  `,
  styleUrls: ['./audio-list.component.css']
})
export class AudioListComponent implements OnInit {
  audioUrls = [];

  constructor(private audioService: AudioService) { }

  ngOnInit() {
    this.audioService.getAudioFiles().subscribe(urls => {
      this.audioUrls = urls;
    });
  }
}
