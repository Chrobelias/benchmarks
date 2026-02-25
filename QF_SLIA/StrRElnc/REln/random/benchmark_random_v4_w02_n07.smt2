(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.* (re.* (str.to_re "804")))))
(assert (str.in_re z (re.* (re.* (re.* (re.* (re.range "4" "9")))))))
(assert (str.in_re a (re.++ (str.to_re "0") (re.union (re.* (str.to_re "4")) (re.range "2" "6")))))
(assert (str.in_re x (re.union (str.to_re "6") (re.++ (re.range "6" "8") (re.+ (str.to_re "88"))))))

(assert (>= (+ (- (str.to_int x)) (* 2 (str.to_int y)) (* 2 (str.to_int z)) (* 2 (str.to_int a))) 75))
(assert (= (+ (str.len x) (str.len y) (* 8 (str.len z)) (* 8 (str.len a))) 2))

(check-sat)