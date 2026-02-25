(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "923")) (re.range "2" "4")) (re.+ (str.to_re "39")))))
(assert (str.in_re y (re.++ (re.+ (str.to_re "769")) (str.to_re "96"))))

(assert (= (+ (* 4 (str.len y)) (* 10 (str.to_int y))) 3))

(check-sat)