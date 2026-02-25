(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.++ (str.to_re "428") (re.union (re.* (str.to_re "474")) (str.to_re "409")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "36")) (re.* (str.to_re "92")))))
(assert (str.in_re y (re.union (str.to_re "45") (re.+ (str.to_re "26")))))
(assert (str.in_re a (re.union (str.to_re "739") (re.+ (re.* (str.to_re "13"))))))

(assert (= (+ (* (- 9) (str.to_int x)) (* 5 (str.to_int y)) (* (- 3) (str.to_int z)) (* 2 (str.to_int a))) 66))
(assert (< (+ (* (- 7) (str.len x)) (* 9 (str.len y)) (* 9 (str.len z)) (* 10 (str.len a))) 81))

(check-sat)