
  static readonly Checkers: {
    [action: string]: (classroom: Classroom | undefined) => boolean;
  } = {};


//Cette partie déclare le type de la propriété Checkers. Elle indique que Checkers est un objet dont les clés sont des chaînes de caractères (représentant des actions) et les valeurs sont des fonctions. Ces fonctions prennent un paramètre nommé classroom qui peut être soit une instance de la classe Classroom soit undefined, et elles retournent un booléen.

= {}: Ceci initialise la propriété Checkers avec un objet vide.


/*

*/
Checkers["CreateClassroom"] = (classroom) => {
  // Vérifie si la création d'une classe est autorisée.
  // Pour cet exemple simpliste, disons que si `classroom` est undefined, alors c'est autorisé.
  return classroom === undefined;
};

/**/

type ActionChecker = (classroom?: Classroom) => boolean;

static readonly Checkers: Record<string, ActionChecker> = {};
/*
  Here's what was done:
  We introduced a type alias ActionChecker to represent the function type. This makes it more readable as you can immediately tell it's a function taking an optional classroom and returning a boolean.
  Replaced the inline type definition with TypeScript's built-in Record utility type. Record<K, T> is a utility type that represents an object type with keys of type K and values of type T. This makes the type declaration more concise and readable.


  It's important to remember that this declaration is not defining any function behavior. 
  It's just setting up a structure that tells us Checkers will be an object where each key is a string
  (representing some kind of action) and each value is a function that can check something 
  about a classroom.
*/



/*
ok so I have 
canDeleteClassroom method 

qui fait retour de permissionchecker.IsAuthorisedOf( 1 param = Action.DeleteClassroom, 2ème props.classroom)

like this : 

    const canDeleteClassroom = computed(() => {
      return PermissionChecker.isAuthorizedOf(Action.DeleteClassroom, props.classroom);
    });

isAuthorisedOf

method recupere ckecker avec un clé, donc recupere le value de checker avec le clé de parametre 
action, 

et cette methode recupéré, elle y passe en parametre classroom, comme ci-dessous

  public static isAuthorizedOf(action: string, classroom: Classroom | undefined) {
    const checker = PermissionChecker.Checkers[action];
    if (checker && checker(classroom)) {
      return true;
    }
    if (!checker) {
      //return false;
      console.log(
        `TODO: define a checker for action:${action} departmentId:${classroom?.departmentId}`
      );
      if (PermissionChecker.Roles[vxm.user.role]) {
        return PermissionChecker.Roles[vxm.user.role].some(
          permission => permission.name === action
        );
      }
    }
    return false;
  }

par contre je vois null part et je sais pas où je dois chercher la definition de cette methode, 
checker(classroom)


  static readonly Checkers: {
    [action: string]: (classroom: Classroom | undefined) => boolean;
  } = {};
*/

/*
in Main.ts
I have found initialization de checker 

//init all permissions checkers
PermissionChecker.InitCheckers();

  public static InitCheckers() {
    PermissionChecker.Checkers[Action.DeleteClassroom] = PermissionChecker.deleteClassroomChecker;
    

I am trying to understand, 
what's going on here : 

pour donc 
    Action.DeleteClassroom
      j'ai cette string
        public static readonly DeleteClassroom = "Classroom deletion";

          dans la class Action
            export class Action {
              public static readonly DeleteClassroom = "Classroom deletion";
              etc. 
              
             so am I right, that for in checkers, for key set as PermissionChecker.Checkers[Action.DeleteClassroom]

             I am going to have atributed function PermissionChecker.deleteClassroomChecker;

             as in code 
                    public static InitCheckers() {
    PermissionChecker.Checkers[Action.DeleteClassroom] = PermissionChecker.deleteClassroomChecker;

                      which, this function looks like this 
                        static deleteClassroomChecker(classroom: Classroom | undefined): boolean {
                          return PermissionChecker.defaultAdmin(classroom);
                        }

                          static defaultAdmin(classroom: Classroom | undefined): boolean {
                            if (!PermissionChecker.isGlobalAdmin()) {
                              return PermissionChecker.isAdminOf(classroom);
                            }
                            return true;
                          }


  static isAdminOf(classroom: Classroom | undefined): boolean {
    if (classroom) {
      return (
        vxm.user.vclaims.classroom_admin?.some(current => current === classroom.departmentId) ??
        false
      );
    }
    return false;
  }
    
so is my understanding correct that it is used as follow now later on: 


*/        