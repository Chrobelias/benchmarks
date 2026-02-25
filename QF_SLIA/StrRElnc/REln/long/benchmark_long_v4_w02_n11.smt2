(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len a) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re a (re.+ (re.++ (re.+ (str.to_re "4")) (str.to_re "43")))))
(assert (str.in_re y (re.+ (re.union (re.range "3" "5") (re.++ (str.to_re "0") (str.to_re "929"))))))
(assert (str.in_re x (re.union (re.* (str.to_re "13")) (re.+ (str.to_re "0")))))
(assert (str.in_re z (re.+ (re.union (str.to_re "41") (re.+ (re.+ (str.to_re "949")))))))

(assert (> (+ (* 5 (str.len y)) (- (str.to_int z))) 63))

(check-sat)