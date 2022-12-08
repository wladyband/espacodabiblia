import questionsRouter from '@modules/questions/routes/questions.routes';
import usersRouter from '@modules/users/routes/users.routes';
import { Router } from 'express';

const routes = Router();

routes.use('/questions', questionsRouter);
routes.use('/users', usersRouter);

export default routes;
