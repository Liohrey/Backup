import { INavbarData } from './helper';

export const navbarData: INavbarData[] = [
  {
    routeLink: 'home',
    icon: 'fal fa-home',
    label: 'Home',
  },
  {
    routeLink: 'profile',
    icon: 'fal fa-user',
    label: 'Profile',
  },
  {
    routeLink: 'faculty',
    icon: 'fal fa-users',
    label: 'Faculty',
    items: [
      {
        routeLink: 'faculty/ceah',
        label: 'CEAS',
      },
      {
        routeLink: 'faculty/ccs',
        label: 'CCS',
      },
      {
        routeLink: 'faculty/cba',
        label: 'CBA',
      },
      {
        routeLink: 'faculty/chtm',
        label: 'CHTM',
      },
      {
        routeLink: 'faculty/cahs',
        label: 'CAHS',
      },
      {
        routeLink: 'faculty/cvform',
        label: 'CV Form',
      },
      {
        routeLink: 'faculty/cv',
        label: 'CV',
      }
    ],
  },
  {
    routeLink: 'feedbacks',
    icon: 'fal fa-comments',
    label: 'Feedbacks',
    expanded: true,
  },

  {
    routeLink: 'aboutus',
    icon: 'fal fa-info-circle',
    label: 'About us',
  },
];
