

//
As for design patterns, Angular heavily promotes the use of Observables and the reactive programming style (RxJS) for these kinds of operations.

To solve issues like memory leaks, you should always unsubscribe from the subscription when the component is destroyed. This can be achieved by using operators like takeUntil, takeWhile, or first. For example:

//
import { Subject } from 'rxjs';
import { takeUntil } from 'rxjs/operators';

...

private unsubscribe$ = new Subject();

ngOnInit() {
  this.dataService.currentData.pipe(takeUntil(this.unsubscribe$)).subscribe(message => this.message = message)
}

ngOnDestroy() {
  this.unsubscribe$.next();
  this.unsubscribe$.complete();
}

//