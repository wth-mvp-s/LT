# Super() 
is a special keyword in TypeScript that calls the constructor of the parent class

@Injectable()
export class EvenBetterLogger extends Logger {
  constructor(private userService: UserService) { super(); }

  override log(message: string) {
    const name = this.userService.user.name;
    super.log(`Message to ${name}: ${message}`);
  }
}
# <ng-content>
Directive, -  used as a placeholder for content that will be dynamically inserted. 
# Use Vault
for storing connection strings or encryption keys

# nswag
> , creer model pour le front de maniere automatique. 