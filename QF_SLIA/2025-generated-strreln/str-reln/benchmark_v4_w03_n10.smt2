(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (str.to_re "473"))))
(assert (str.in_re y (re.union (re.+ (re.++ (str.to_re "16") (str.to_re "66"))) (str.to_re "955"))))
(assert (str.in_re z (re.union (re.* (str.to_re "474")) (re.++ (re.range "5" "7") (re.range "4" "6")))))
(assert (str.in_re a (re.union (str.to_re "0") (re.+ (re.++ (str.to_re "3") (re.* (re.range "6" "8")))))))

(assert (= (+ (- (str.len y)) (* 6 (str.len z)) (* 9 (str.len a))) 8))
(assert (> (+ (* 4 (str.len x)) (* 4 (str.len y)) (* (- 8) (str.to_int a))) 41))

(check-sat)