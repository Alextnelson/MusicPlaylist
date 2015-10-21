//
//  PlaylistDetailViewController.h
//  MusicPlaylist
//
//  Created by Alexander Nelson on 10/20/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Playlist.h"

@class Playlist;

@interface PlaylistDetailViewController : UIViewController
@property (strong, nonatomic) Playlist *playlist;

@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *playlistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;


@end
