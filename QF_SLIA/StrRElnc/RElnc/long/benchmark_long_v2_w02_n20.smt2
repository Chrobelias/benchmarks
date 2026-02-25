(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "13" y)))

(assert (str.in_re y (re.++ (re.+ (str.to_re "1")) (re.* (re.+ (str.to_re "978"))))))
(assert (str.in_re x (re.union (re.+ (str.to_re "0")) (re.+ (re.range "1" "9")))))

(assert (>= (+ (* 4 (str.len y)) (* 7 (str.to_int y))) 25))

(check-sat)