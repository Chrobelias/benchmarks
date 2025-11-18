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

(assert (str.in_re x (re.+ (re.++ (str.to_re "791") (re.++ (re.+ (str.to_re "5")) (str.to_re "12"))))))
(assert (str.in_re y (re.+ (re.union (re.++ (str.to_re "991") (str.to_re "703")) (str.to_re "88")))))
(assert (str.in_re z (re.++ (str.to_re "2") (re.++ (re.range "4" "8") (re.union (str.to_re "5") (re.+ (str.to_re "4")))))))
(assert (str.in_re a (re.union (re.* (str.to_re "72")) (re.++ (str.to_re "183") (str.to_re "37")))))
(assert (str.in_re b (re.union (re.union (str.to_re "45") (re.* (str.to_re "839"))) (str.to_re "5"))))

(assert (= (+ (str.to_int x) (* 9 (str.to_int y)) (* 5 (str.to_int z)) (* (- 5) (str.to_int a)) (* 5 (str.to_int b))) 81))
(assert (< (+ (* (- 7) (str.len x)) (str.len y) (* 3 (str.len z)) (* 4 (str.len a)) (str.len b)) 22))
(assert (= (+ (* 3 (str.len x)) (* (- 3) (str.len z)) (* 2 (str.len a)) (- (str.len b))) 100))

(check-sat)