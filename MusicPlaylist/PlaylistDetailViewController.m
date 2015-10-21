//
//  PlaylistDetailViewController.m
//  MusicPlaylist
//
//  Created by Alexander Nelson on 10/20/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import "PlaylistDetailViewController.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if (self.playlist) {
        self.playlistCoverImage.image = self.playlist.playlistIconLarge;
        self.playlistCoverImage.backgroundColor = self.playlist.backgroundColor;
        self.playlistTitle.text = self.playlist.playlistTitle;
        self.playlistDescription.text = self.playlist.playlistDescription;

        self.playlistArtist0.text = self.playlist.playlistArtists[0];
        self.playlistArtist1.text = self.playlist.playlistArtists[1];
        self.playlistArtist2.text = self.playlist.playlistArtists[2];

    }
}


@end
