//
//  ViewController.m
//  MusicPlaylist
//
//  Created by Alexander Nelson on 10/20/15.
//  Copyright © 2015 Jetwolfe Labs. All rights reserved.
//

#import "PlaylistRootViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistRootViewController ()

@end

@implementation PlaylistRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {

        Playlist *playlist =[[Playlist alloc]initWithIndex:index];

        UIImageView *playlistImageView = self.playlistImageViews[index];

        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.backgroundColor;
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {

        UIImageView *playlistImageView = (UIImageView *)[sender view];

        if ([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];

            PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;

            playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];
        }
    }
}

- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}





@end
