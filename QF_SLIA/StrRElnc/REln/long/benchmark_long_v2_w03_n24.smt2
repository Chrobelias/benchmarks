(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (re.++ (str.to_re "3") (re.* (re.range "0" "2"))))))
(assert (str.in_re x (re.+ (str.to_re "46"))))

(assert (>= (+ (- (str.len y)) (* 5 (str.to_int x))) 63))
(assert (= (* 6 (str.to_int x)) 4))

(check-sat)