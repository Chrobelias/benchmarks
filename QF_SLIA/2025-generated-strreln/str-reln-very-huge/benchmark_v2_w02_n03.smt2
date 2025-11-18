(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.+ (str.to_re "20")) (re.+ (str.to_re "57")))))
(assert (str.in_re y (re.union (str.to_re "292") (re.++ (re.+ (str.to_re "0")) (re.+ (str.to_re "18"))))))

(assert (= (+ (str.len x) (* 7 (str.to_int x)) (str.to_int y)) 99))

(check-sat)