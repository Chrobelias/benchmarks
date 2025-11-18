(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "153")) (str.to_re "6")))))
(assert (str.in_re y (re.union (re.* (str.to_re "765")) (re.union (str.to_re "6") (str.to_re "8")))))
(assert (str.in_re z (re.union (re.++ (re.* (str.to_re "81")) (re.* (str.to_re "76"))) (str.to_re "830"))))
(assert (str.in_re a (re.union (str.to_re "46") (re.* (re.* (re.* (str.to_re "920")))))))
(assert (str.in_re b (re.+ (re.* (re.union (str.to_re "815") (re.* (str.to_re "872")))))))

(assert (<= (+ (* 3 (str.len y)) (* 5 (str.len z)) (* 10 (str.len a)) (* (- 10) (str.len b))) 80))
(assert (= (+ (* 2 (str.len x)) (* (- 2) (str.len y)) (* 3 (str.len z)) (* (- 9) (str.len a)) (* 9 (str.len b))) 59))
(assert (> (+ (* (- 8) (str.to_int x)) (* (- 9) (str.to_int y)) (* (- 7) (str.to_int z)) (* (- 4) (str.to_int a)) (* 10 (str.to_int b))) 32))

(check-sat)