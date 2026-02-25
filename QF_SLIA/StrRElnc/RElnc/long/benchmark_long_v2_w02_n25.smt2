(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (= (str.++ x "83") (str.++ "76" y)))

(assert (str.in_re x (re.* (re.++ (re.* (re.range "5" "7")) (re.+ (str.to_re "32"))))))
(assert (str.in_re y (re.+ (re.+ (re.range "1" "8")))))

(assert (= (+ (- (str.len x)) (* 9 (str.len y))) 56))
(assert (>= (* (- 8) (str.to_int x)) 70))

(check-sat)