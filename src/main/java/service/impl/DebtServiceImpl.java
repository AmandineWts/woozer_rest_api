package service.impl;

import dao.DebtDao;
import entity.Debt;
import entity.Group;
import entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.DebtService;
import service.GroupService;
import service.UserService;

import java.util.*;

@Service
public class DebtServiceImpl implements DebtService {

    @Autowired
    private DebtDao debtDao;

    @Autowired
    private GroupService groupService;

    @Autowired
    private UserService userService;

    @Override
    public List<Debt> findAllInGroup(Long groupId) {
        List<Group> group = Arrays.asList(groupService.findById(groupId));
        return debtDao.findAllByGroupIn(group);
    }

    @Override
    public List<Debt> findAllByUser(Long userId) {
        Set<User> user = new HashSet<>(Arrays.asList(userService.findById(userId)));
        return debtDao.findAllByPayedForInOrPayedByIn(user, user);
    }

    @Override public Debt save(Debt debt) {
        return debtDao.save(debt);
    }

    @Override public Debt acknowledge(Long debtId) {
        Debt debt = debtDao.findById(debtId).get();
        debt.setDone(!debt.isDone());
        return debtDao.save(debt);
    }

}
