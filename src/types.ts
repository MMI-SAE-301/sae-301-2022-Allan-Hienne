export interface Montre {
    ecran?: string;
    bracelet_inf?: string;
    bracelet_sup?: string;
    boitier_inf?: string;
    boitier_sup?: string;
  }

  export const colors = {
    "#CCAEDB": "Magenta",
    "#B0B2DD": "Bleu",
    "#DCB3AF": "Crème",
    "#DACCAD": "Jaune",
    "#C4A18A": "Marron",
    "#D1DCAF": "Vert",
    "#FF00FF": "Magenta",
    "#424242": "NoirP",
    "#FFFFFF": "BlanP",
    "#030305": "NoirM",
    "#FEFEFE": "BlancM",
  };

  export const materiaux = [
    {
      value: "591c8ac9-f6f7-476a-90e4-0b0bfc1c4cde",
      img: "https://images.pexels.com/photos/1487821/pexels-photo-1487821.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      label: "Caoutchouc",
    },
    {
      value: "53325a6c-30bd-4498-a952-71fcc297135b",
      img: "https://images.pexels.com/photos/1487834/pexels-photo-1487834.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      label: "Acier",
    },
    {
      value: "32f12b08-de30-4152-b299-6479ace36634",
      img: "https://images.pexels.com/photos/207300/pexels-photo-207300.jpeg",
      label: "Cuir",
    },
  ];